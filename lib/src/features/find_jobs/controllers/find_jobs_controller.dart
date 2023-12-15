import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/search_response/paginated_job_list_response.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/popular_tag/popular_tag.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/server_static_repo.dart';
import 'package:jobpilot/src/features/authentication/views/login.dart';
import 'package:jobpilot/src/features/find_jobs/views/filter_job.dart';
import 'package:jobpilot/src/features/single_job/views/job_details.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/utilities/functions.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class FindJobController extends GetxController {
  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  final searchController = TextEditingController();
  final locationController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
    searchController.addListener(() {
      currentQuery = currentQuery.copyWith(query: searchController.text);
    });
    locationController.addListener(() {
      currentQuery = currentQuery.copyWith(location: locationController.text);
    });
    setPopularSearchTags();
    fetchJobsWithCurrentQuery();
  }

  @override
  void onClose() {
    searchController.dispose();
    locationController.dispose();
    pageScrollController.dispose();
    super.onClose();
  }

  final _staticStorage = StaticStorage();
  final _staticRepo = ServerStaticRepository();
  List<PopularTag>? get popularTags => _staticStorage.popularTag;
  setPopularSearchTags() async {
    try {
      final res = await _staticRepo.fetchPopularTags();
      if (res.isSuccess) {
        await _staticStorage.savePopularTags(res.data!);
        update();
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#FetchPopularTagError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  SearchQuery currentQuery = const SearchQuery();

  /* Pagination */
  final singlePageSize = 10;
  final _jobRepo = JobsRepository();
  final pageScrollController = ScrollController();
  PaginatedJobListResponse? paginationData;
  List<Job>? get currentJobList => paginationData?.data;

  int get currentPageIndex => paginationData?.currentPage ?? 1;
  bool get needPaginationControl =>
      !isLoading &&
      paginationData?.lastPage != null &&
      paginationData!.lastPage! > 1;

  fetchJobsWithCurrentQuery({int? index, bool isRefresh = false}) async {
    try {
      rmvFocus();
      if (!isRefresh) setLoadingStatus(true);
      final searchRes = await _jobRepo.searchJobs(
        query: currentQuery,
        pageSize: singlePageSize,
        pageIndex: index ?? currentPageIndex,
      );
      if (searchRes.isSuccess) {
        paginationData = searchRes.data!;
      } else {
        showToastError(searchRes.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#FindJobError", error: e, stackTrace: s);
    }
  }

  goToFilterPage() async {
    final res = await Get.to(
      () => AdvanceJobFilter(
        currentQuery: currentQuery,
      ),
    );
    if (res is SearchQuery) {
      currentQuery = res;
      if (res.query == null) searchController.clear();
      if (res.location == null) locationController.clear();
      update();
    }
  }

  Future onBookmarkJobClick(int jobId) async {
    if (!AuthController.find.isAuthenticated) {
      Get.to(() => const LoginScreen());
      return;
    }
    try {
      setLoadingStatus();
      final res = await _jobRepo.toggleJobBookmark(jobId);
      if (res.isSuccess) {
        showToastSuccess(res.data!.message!);
      } else {
        showToastError(res.errorMsg);
      }
      await fetchJobsWithCurrentQuery();
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#ToggleJobBookmarkError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  onJobClick(String jobSlug) => Get.to(
        () => JobDetailsScreen(
          jobSlug: jobSlug,
        ),
      );
}

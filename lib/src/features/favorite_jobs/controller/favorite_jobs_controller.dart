import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/favorite_jobs/data/favorite_job.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/favorite_jobs/links/links.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/favorite_jobs/meta/meta.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/favorite_jobs/response/paginated_favorite_jobs_response.dart';
import 'package:jobpilot/src/features/single_job/views/job_details.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/functions.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class FavoriteJobsController extends GetxController with BaseControllerSystem {
  @override
  void onReady() {
    super.onReady();
    fetchFavoriteJobsList();
  }

  @override
  void dispose() {
    pageScrollController.dispose();
    super.dispose();
  }

  /* Pagination */
  final singlePageSize = 10;
  final _jobsRepo = JobsRepository();
  final pageScrollController = ScrollController();
  PaginatedFavoriteJobsResponse? response;
  Meta? get paginationMetaData => response?.meta;
  Links? get navLinks => response?.links;
  List<FavoriteJob>? get jobsList => response?.data;

  int get currentPageIndex => paginationMetaData?.currentPage ?? 1;
  bool get needPaginationControl =>
      !isLoading &&
      paginationMetaData?.lastPage != null &&
      paginationMetaData!.lastPage! > 1;

  fetchFavoriteJobsList({
    bool isRefreshing = false,
    int? pageIndex,
  }) async {
    try {
      rmvFocus();
      if (!isRefreshing) setLoadingStatus(true);
      final searchRes = await _jobsRepo.getFavoriteJobs(
        pageSize: singlePageSize,
        pageIndex: pageIndex ?? currentPageIndex,
      );
      if (searchRes.isSuccess) {
        response = searchRes.data!;
      } else {
        showToastError(searchRes.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      if (e is RequestException) e.handleError();
      log("#FindCompanyError", error: e, stackTrace: s);
    }
  }

  void onJobClick(String slug) async {
    await Get.to(() => JobDetailsScreen(jobSlug: slug));
    fetchFavoriteJobsList(isRefreshing: true);
  }
}

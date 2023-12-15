import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/search_response/paginated_job_list_response.dart';
import 'package:jobpilot/src/features/single_job/views/job_details.dart';

class JobAlertController extends GetxController {
  final _jobRepo = JobsRepository();
  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  @override
  void onReady() {
    super.onReady();
    fetchJobsWithCurrentQuery();
  }

  @override
  void onClose() {
    pageScrollController.dispose();
    super.onClose();
  }

  /* Pagination */
  final singlePageSize = 10;
  final pageScrollController = ScrollController();
  int get currentPageIndex => paginationData?.currentPage ?? 1;
  PaginatedJobListResponse? paginationData;
  List<Job>? get currentJobList => paginationData?.data;

  fetchJobsWithCurrentQuery({int? index}) async {
    try {
      // setLoadingStatus(true);
      // final searchRes = await _jobRepo.searchJobs(
      //   query: currentQuery,
      //   pageSize: singlePageSize,
      //   pageIndex: index ?? currentPageIndex,
      // );
      // if (searchRes.isSuccess) {
      //   paginationData = searchRes.data!;
      //   setLoadingStatus();
      // } else {
      //   showToastError(searchRes.errorMsg);
      //   setLoadingStatus();
      // }
    } catch (e, s) {
      setLoadingStatus();
      log("#FindJobError", error: e, stackTrace: s);
    }
  }

  onJobClick(String jobSlug) => Get.to(
        () => JobDetailsScreen(
          jobSlug: jobSlug,
        ),
      );
}

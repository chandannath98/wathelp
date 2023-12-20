import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_alert/paginated_response/paginated_job_alert_response.dart';
import 'package:jobpilot/src/features/single_job/views/job_details.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class JobAlertController extends GetxController with BaseControllerSystem {
  final _jobRepo = JobsRepository();

  @override
  void onReady() {
    super.onReady();
    fetchJobAlerts();
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
  PaginatedJobAlertData? paginationData;
  List<String>? get currentJobList => paginationData?.data;

  bool get needPaginationControl =>
      !isLoading &&
      paginationData?.lastPage != null &&
      paginationData!.lastPage! > 1;

  fetchJobAlerts({int? index}) async {
    try {
      setLoadingStatus(true);
      final searchRes = await _jobRepo.fetchCandidateJobAlerts(
        pageSize: singlePageSize,
        pageIndex: index ?? currentPageIndex,
      );
      if (searchRes.isSuccess) {
        paginationData = searchRes.data!.notifications;
      } else {
        showToastError(searchRes.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#FetchJobAlertsError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  onJobClick(String jobSlug) => Get.to(
        () => JobDetailsScreen(
          jobSlug: jobSlug,
        ),
      );
}

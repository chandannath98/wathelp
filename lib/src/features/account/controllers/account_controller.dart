import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/account/account_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/account/candidate/dashboard/candidate_dashboard_data.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/models/user/user.dart';

import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/applied_jobs/job/applied_job.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/applied_jobs/paginated_applied_jobs/response/paginated_applied_jobs_response.dart';
import 'package:jobpilot/src/features/account/views/applied_jobs.dart';
import 'package:jobpilot/src/features/single_job/views/job_details.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/functions.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class AccountController extends GetxController with BaseControllerSystem {
  static AccountController get find => Get.find();
  final _dashboardRepo = AccountRepository();
  User get currentProfile => AuthController.find.currentUser!;

  @override
  void onInit() {
    super.onInit();
    AuthController.find.addListener(() => update());
    getDashboardData();
    getCandidateAppliedJobList();
  }

  CandidateDashboardData? dashboardData;

  getDashboardData() async {
    try {
      setLoadingStatus(true);
      final res = await _dashboardRepo.getCandidateDashboardData();
      if (res.isSuccess) {
        dashboardData = res.data!;
        update();
      } else {
        showToastError(res.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#GetDashboardDataError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

/* Paginated Applied Jobs! */
  final singlePageSize = 10;
  final _jobRepo = JobsRepository();
  final pageScrollController = ScrollController();
  PaginatedAppliedJobResponse? paginationData;
  List<AppliedJob>? get currentAppliedJobList => paginationData?.data;

  int get currentPageIndex => paginationData?.currentPage ?? 1;
  bool get needPaginationControl =>
      !isLoading &&
      paginationData?.lastPage != null &&
      paginationData!.lastPage! > 1;

  onViewJobDetailsTap(String jobSlug) async => Get.to(
        () => JobDetailsScreen(
          jobSlug: jobSlug,
        ),
      );

  onViewAllJobsTap() async => Get.to(
        () => AppliedJobsScreen(controller: this),
      );

  getCandidateAppliedJobList({int? index, bool isRefresh = false}) async {
    try {
      rmvFocus();
      if (!isRefresh) setLoadingStatus(true);
      final res = await _jobRepo.fetchCandidateAppliedJobs(
        pageSize: singlePageSize,
        pageIndex: index ?? currentPageIndex,
      );
      if (res.isSuccess) {
        paginationData = res.data!;
      } else {
        showToastError(res.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#GetCandidateAppliedJobListError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

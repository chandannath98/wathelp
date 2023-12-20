import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/company/company.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/job_detail_response/job_detail_response.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/job_details/job_details.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/job_resume/job_resume.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/related_jobs/related_job.dart';
import 'package:jobpilot/src/features/authentication/views/login_system_switcher.dart';
import 'package:jobpilot/src/features/single_job/views/apply_job.dart';
import 'package:jobpilot/src/features/single_job/views/job_description.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class SingleJobController extends GetxController {
  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  final _jobRepo = JobsRepository();
  final String slug;

  SingleJobController({
    required this.slug,
  });

  @override
  onInit() {
    super.onInit();
    fetchJobDetails();
  }

  JobDetailResponse? detailResponse;

  JobDetails? get jobDetails => detailResponse?.job;
  Company? get company => detailResponse?.job?.company;
  List<RelatedJob>? get relatedJobs => detailResponse?.relatedJobs;
  List<JobResume>? get resumes => detailResponse?.resumes;

  showFullDescription() async {
    Get.to(
      () => JobDescriptionHtmlWidget(
        name: jobDetails?.title ?? "",
        isBookmarked: jobDetails?.bookmarked ?? false,
        htmlText: jobDetails?.description ?? "",
        onApplyClick: () {
          onApplyClick();
        },
        onBookmarkCallback: () {},
      ),
    );
  }

  _gotoApplyPageSystem() async {
    final res = await Get.to(
      () => ApplyJobScreen(
        jobId: jobDetails!.id!,
        jobName: jobDetails?.title ?? "",
      ),
    );
    if (res is bool && res == true) {
      fetchJobDetails();
    }
  }

  Future onApplyClick() async {
    if (AuthController.find.isAuthenticated) {
      await _gotoApplyPageSystem();
    } else {
      await Get.to(() => const LoginSystemScreen());
      if (AuthController.find.isAuthenticated) {
        await _gotoApplyPageSystem();
      }
    }
  }

  Future onBookmarkJobClick() async {
    try {
      final res = await _jobRepo.toggleJobBookmark(jobDetails!.id!);
      if (res.isSuccess) {
        showToastSuccess(res.data!.message!);
      } else {
        showToastError(res.errorMsg);
      }
      await fetchJobDetails(isRefresh: true);
      log("Is bookmarked : ${detailResponse!.job!.bookmarked}");
    } catch (e, s) {
      log("#ToggleJobBookmarkError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  fetchJobDetails({
    bool isRefresh = false,
  }) async {
    try {
      if (!isRefresh) setLoadingStatus();
      final res = await _jobRepo.fetchSingleJobDetails(slug);
      if (res.isSuccess) {
        detailResponse = res.data!;
      } else {
        showToastError(res.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      log("#FetchJobDetailsError", error: e, stackTrace: s);
      setLoadingStatus(false);
      if (e is RequestException) e.handleError();
    }
  }
}

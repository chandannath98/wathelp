import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/company/company.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/job_detail_response/job_detail_response.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/job_details/job_details.dart';
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
  List<String>? get resumes => detailResponse?.resumes;

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

  Future onApplyClick() async {
    if (AuthController.find.isAuthenticated) {
      Get.to(() => ApplyJobScreen(jobName: jobDetails?.title ?? ""));
    } else {
      await Get.to(() => const LoginSystemScreen());
      if (AuthController.find.isAuthenticated) {
        Get.to(() => ApplyJobScreen(jobName: jobDetails?.title ?? ""));
      }
    }
  }

  Future onBookmarkClick() async {}

  fetchJobDetails() async {
    try {
      setLoadingStatus();
      final res = await _jobRepo.fetchSingleJobDetails(slug);
      if (res.isSuccess) {
        detailResponse = res.data!;
      } else {
        showToastError(res.errorMsg);
      }
      setLoadingStatus();
    } catch (e, s) {
      log("#FetchJobDetailsError", error: e, stackTrace: s);
      setLoadingStatus(false);
      if (e is RequestException) e.handleError();
    }
  }
}

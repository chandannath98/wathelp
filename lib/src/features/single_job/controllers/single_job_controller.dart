import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/constants/assets/app_strings.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/company/company.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/job_detail_response/job_detail_response.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/job_details/job_details.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/job_resume/job_resume.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/related_jobs/related_job.dart';
import 'package:jobpilot/src/features/authentication/views/login_system_switcher.dart';
import 'package:jobpilot/src/features/find_jobs/views/find_jobs.dart';
import 'package:jobpilot/src/features/single_job/views/apply_job.dart';
import 'package:jobpilot/src/features/single_job/views/job_description.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/utilities/functions.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';
import 'package:jobpilot/src/utilities/social_share_link.dart';
import 'package:social_share/social_share.dart';
import 'package:url_launcher/url_launcher.dart';

String? _encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

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

  onLoadMoreClick() async => Get.to(() => const FindJobScreen());

  showFullDescription() async {
    Get.to(
      () => JobDescriptionHtmlWidget(slug: slug, controller: this),
    );
  }

  _getIntoJobApplySystem() async {
    switch (jobDetails!.applyOn!) {
      case ApplyStyle.app:
        {
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
      case ApplyStyle.email:
        {
          final Uri emailLaunchUri = Uri(
            scheme: 'mailto',
            path: jobDetails?.applyEmail,
            query: _encodeQueryParameters(
              <String, String>{
                'subject':
                    'Application for the position of ${jobDetails?.title ?? ""}',
              },
            ),
          );
          if (await launchUrl(emailLaunchUri)) {
            fetchJobDetails();
          }
        }

      case ApplyStyle.customUrl:
        {
          final pursedUrl = Uri.parse(jobDetails?.applyUrl ?? "");
          if (await canLaunchUrl(pursedUrl)) {
            if (await launchUrl(
              pursedUrl,
              mode: LaunchMode.inAppBrowserView,
            )) {
              fetchJobDetails();
            }
          } else {
            log("Can't launch job apply URL!");
          }
        }
    }
  }

  Future onApplyClick() async {
    if (AuthController.find.isAuthenticated) {
      await _getIntoJobApplySystem();
    } else {
      await Get.to(() => const LoginSystemScreen());
      if (AuthController.find.isAuthenticated) {
        await _getIntoJobApplySystem();
      }
    }
  }

  Future onBookmarkJobClick() async {
    if (!AuthController.find.isAuthenticated) {
      Get.to(() => const LoginSystemScreen());
      return;
    }
    try {
      final res = await _jobRepo.toggleJobBookmark(jobDetails!.id!);
      if (res.isSuccess) {
        await fetchJobDetails(isRefresh: true);
        showToastSuccess(res.data!.message!);
      } else {
        showToastError(res.errorMsg);
      }
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

  copyWebLink() async => await copyClipboard(jobDetails?.webLink ?? "");

  void shareFacebook() async {
    await enterSocialShareLink(
      url: jobDetails?.webLink,
      option: SocialShareOption.facebook,
      text: "Check out this amazing job offer: \n",
    );
  }

  void shareTelegram() async {
    await enterSocialShareLink(
      url: jobDetails?.webLink,
      option: SocialShareOption.telegram,
      text: "Check out this amazing job offer: \n",
    );
  }

  void shareTwitter() async {
    await enterSocialShareLink(
      url: jobDetails?.webLink,
      option: SocialShareOption.twitter,
      text: "Check out this amazing job offer: \n",
    );
  }
}

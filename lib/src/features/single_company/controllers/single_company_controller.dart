import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/company/company_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/single_company/company_details/company_details.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/single_company/company_details_response.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/single_company/open_positions/paginated_open_positions_data.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/single_company/user_info/company_user/company_user.dart';
import 'package:jobpilot/src/features/single_company/views/open_jobs.dart';
import 'package:jobpilot/src/features/single_job/views/job_details.dart';
import 'package:jobpilot/src/utilities/functions.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';
import 'package:jobpilot/src/utilities/social_share_link.dart';

class SingleCompanyController extends GetxController {
  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  final _companyRepo = CompanyRepository();
  final String userName;

  SingleCompanyController({
    required this.userName,
  });

  @override
  onInit() {
    super.onInit();
    fetchCompanyDetails();
  }

  CompanyDetailsResponse? detailResponse;
  CompanyUser? get companyUser => detailResponse?.user;
  CompanyDetails? get companyDetails => detailResponse?.companyDetails;
  List<OpenJob>? get openJobs => detailResponse?.openJobs?.data;

  showFullDescription() async {}

  Future onMoreOpenClick() async => Get.to(
        () => SingleCompanyOpenJobsScreen(
          controller: this,
        ),
      );

  Future onOpenJobClick(String slug) async => Get.to(
        () => JobDetailsScreen(
          jobSlug: slug,
        ),
      );

  Future onBookmarkClick() async {}

/* Pagination */
  final singlePageSize = 10;
  final pageScrollController = ScrollController();
  PaginatedOpenPositionsData? get paginationData => detailResponse?.openJobs;

  int get currentPageIndex => paginationData?.currentPage ?? 1;
  bool get needPaginationControl =>
      !isLoading &&
      paginationData?.lastPage != null &&
      paginationData!.lastPage! > 1;

  fetchCompanyDetails({int? index, bool isRefresh = false}) async {
    try {
      if (!isRefresh) setLoadingStatus();
      final res = await _companyRepo.fetchCompanyDetailsData(
        pageSize: singlePageSize,
        pageIndex: index ?? currentPageIndex,
        userName: userName,
      );
      if (res.isSuccess) {
        detailResponse = res.data!;
      } else {
        showToastError(res.errorMsg);
      }
      if (!isRefresh) setLoadingStatus(false);
    } catch (e, s) {
      if (!isRefresh) setLoadingStatus(false);
      log("#FetchJobDetailsError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  void copyWebLink() => copyClipboard(companyUser!.webLink);

  void shareFacebook() async {
    await enterSocialShareLink(
      url: companyUser?.webLink,
      option: SocialShareOption.facebook,
      text: "Check out this amazing company: \n",
    );
  }

  void shareTelegram() async {
    await enterSocialShareLink(
      url: companyUser?.webLink,
      option: SocialShareOption.telegram,
      text: "Check out this amazing company: \n",
    );
  }

  void shareTwitter() async {
    await enterSocialShareLink(
      url: companyUser?.webLink,
      option: SocialShareOption.twitter,
      text: "Check out this amazing company: \n",
    );
  }
}

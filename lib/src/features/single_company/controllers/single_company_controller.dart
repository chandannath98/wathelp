import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/company/company_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/single_company/company_details/company_details.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/single_company/company_details_response.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/single_company/open_positions/paginated_open_positions_data.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/single_company/user_info/user/user.dart';
import 'package:jobpilot/src/features/single_company/views/open_jobs.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

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
  User? get companyUser => detailResponse?.user;
  CompanyDetails? get companyDetails => detailResponse?.companyDetails;
  List<OpenJob>? get openJobs => detailResponse?.openJobs?.data;

  showFullDescription() async {}

  Future onOpenPositionsClick() async =>
      Get.to(() => const SingleCompanyOpenJobsScreen());

  Future onBookmarkClick() async {}

  fetchCompanyDetails() async {
    try {
      setLoadingStatus();
      final res =
          await _companyRepo.fetchCompanyDetailsData(userName: userName);
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

import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/company/company_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/single_company/company_details_response.dart';
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

  showFullDescription() async {}

  Future onOpenPositionsClick() async {}

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

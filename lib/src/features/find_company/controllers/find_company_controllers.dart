import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/repositories/company/company_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/company/company.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class FindCompanyController extends GetxController {
  final _companyRepo = CompanyRepository();

  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  final searchController = TextEditingController();
  final locationController = TextEditingController();

  @override
  void onReady() {
    super.onReady();
    fetchCompanyListWithCurrentQuery();
  }

  @override
  void onClose() {
    searchController.dispose();
    locationController.dispose();
    super.onClose();
  }

  List<Company> currentCompanyList = [];

  fetchCompanyListWithCurrentQuery() async {
    try {
      setLoadingStatus(true);
      final searchRes = await _companyRepo.fetchCompanyListData();
      if (searchRes.isSuccess) {
        currentCompanyList = searchRes.data!;
      } else {
        showToastError(searchRes.errorMsg);
      }
      setLoadingStatus();
    } catch (e, s) {
      setLoadingStatus();
      log("#FindCompanyError", error: e, stackTrace: s);
    }
  }
}

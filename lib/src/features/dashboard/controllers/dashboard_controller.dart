import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/models/user/user.dart';
import 'package:jobpilot/src/domain/server/repositories/dashboard/candidate/candidate_dashboard_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/dashboard/candidate/model/candidate_dashboard_data.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class DashboardController extends GetxController {
  final _dashboardRepo = CandidateDashboardRepository();
  User get currentProfile => AuthController.find.currentUser!;

  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  @override
  void onInit() {
    AuthController.find.addListener(() => update());
    getDashboardData();
    super.onInit();
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
      setLoadingStatus();
    } catch (e, s) {
      log("#GetDashboardDataError", error: e, stackTrace: s);
      setLoadingStatus();
      if (e is RequestException) e.handleError();
    }
  }
}

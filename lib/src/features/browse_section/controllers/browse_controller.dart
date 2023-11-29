import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/home/home_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/home/models/browse/browse_data/browse_data.dart';

class BrowseDataController extends GetxController {
  final HomeRepository _homeRepository = HomeRepository();
  bool isLoading = false;

  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getBrowseData();
  }

  BrowseData? data;

  getBrowseData() async {
    try {
      setLoadingStatus();
      final res = await _homeRepository.fetchBrowseData();
      if (res.isSuccess) {
        data = res.data!;
        setLoadingStatus();
      }
    } catch (e, s) {
      log("#getBrowseDataError", error: e, stackTrace: s);
      if (e is RequestException) {
        e.handleError();
        setLoadingStatus();
      }
    }
  }
}

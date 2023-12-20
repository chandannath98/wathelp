import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/home/home_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/home/models/browse/browse_data/browse_data.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/popular_tag/popular_tag.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/server_static_repo.dart';
import 'package:jobpilot/src/features/find_jobs/views/find_jobs.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class BrowseDataController extends GetxController {
  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  final searchController = TextEditingController();
  final locationController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getBrowseData();
    setPopularSearchTags();
  }

  final _staticStorage = StaticStorage();
  final _staticRepo = ServerStaticRepository();
  List<PopularTag>? get popularTags => _staticStorage.popularTag;
  setPopularSearchTags() async {
    try {
      final res = await _staticRepo.fetchPopularTags();
      if (res.isSuccess) {
        await _staticStorage.savePopularTags(res.data!);
        update();
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#FetchPopularTagError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  onSearchClick() async {
    await Get.to(
      () => FindJobScreen(
        searchText: searchController.text,
        locationText: locationController.text,
      ),
    );

    searchController.clear();
    locationController.clear();
  }

  BrowseData? data;

  final HomeRepository _homeRepository = HomeRepository();
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

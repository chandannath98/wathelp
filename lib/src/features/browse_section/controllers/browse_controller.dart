import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/home/home_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/home/models/browse/browse_data/browse_data.dart';
import 'package:jobpilot/src/domain/server/repositories/home/models/browse/home_categories/home_top_categories.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/features/authentication/views/registration.dart';
import 'package:jobpilot/src/features/find_jobs/views/find_jobs.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';

class BrowseDataController extends GetxController with BaseControllerSystem {
  final searchController = TextEditingController();
  final locationController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getBrowseData();
  }

  Future<void> onRegisterClick() async {
    Get.to(
      () => const RegistrationScreen(
        showLoginButton: false,
      ),
      transition: Transition.rightToLeft,
    );
    update();
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
  List<HomeTopCategories>? get popularTags => data?.topCategories;

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

  void onTopCategorySelect(int? id) => Get.to(
        () => FindJobScreen(query: SearchQuery(category: id)),
      );

  void onTopVacancySelect(int? id) => Get.to(
        () => FindJobScreen(query: SearchQuery(jobRole: id)),
      );

  void onSuggestionSelect(int? id) => Get.to(
        () => FindJobScreen(query: SearchQuery(category: id)),
      );
}

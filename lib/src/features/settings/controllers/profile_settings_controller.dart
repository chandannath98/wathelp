import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/profile_settings/candidate_profile_settings/candidate_profile_setting_data.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/settings_repo.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class ProfileSettingsController extends GetxController
    with BaseControllerSystem {
  late final TextEditingController bioController;

  @override
  void onInit() {
    super.onInit();
    bioController = TextEditingController();
    fetchProfileSettingsData();
  }

  @override
  void onClose() {
    bioController.dispose();
    super.onClose();
  }

  CandidateProfileSettingData? data;

  void onGenderSelect(Gender genderData) {
    data = data?.copyWith(gender: genderData);
    update();
  }

  onMaritalStatusSelect(MaritalStatus status) {
    data = data?.copyWith(maritalStatus: status);
    update();
  }

  onProfessionSelect(int id) {
    data = data?.copyWith(professionId: id);
    update();
  }

  final _settingsRepo = SettingsRepository();
  fetchProfileSettingsData() async {
    try {
      setLoadingStatus();
      final res = await _settingsRepo.fetchCandidateProfileData();
      if (res.isSuccess) {
        data = res.data!;
        bioController.text = res.data?.bio ?? "";
        update();
      } else {
        showToastError(res.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#ProfileSettingFetchError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

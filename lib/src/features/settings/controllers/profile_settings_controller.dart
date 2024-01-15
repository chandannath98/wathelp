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
  late final TextEditingController availableInController;

  @override
  void onInit() {
    super.onInit();
    bioController = TextEditingController();
    availableInController = TextEditingController();
    fetchProfileSettingsData();
  }

  @override
  void onClose() {
    bioController.dispose();
    availableInController.dispose();
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

  onStatusChange(AvailableStatus availableStatus) {
    data = data?.copyWith(availability: availableStatus);
    update();
  }

  void onAvailableDateSet(String date) {
    data = data?.copyWith(availableIn: date);
    availableInController.text = date;
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
        availableInController.text = res.data?.availableIn ?? "";
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

  Future saveCurrentProfileData() async {
    try {
      final res = await _settingsRepo.updateCandidateProfileData(data: {
        "bio": bioController.text,
        "gender": data?.gender?.name,
        "status": data?.availability?.keyString,
        "profession": data?.professionId,
        "available_in": data?.availableIn,
        "marital_status": data?.maritalStatus?.name,
      });
      if (res.isSuccess) {
        showToastSuccess(res.data!);
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#SaveProfileDataError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

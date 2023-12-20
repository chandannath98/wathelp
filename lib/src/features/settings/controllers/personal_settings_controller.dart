import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/personal_settings/personal_settings_response/personal_setting_data.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/resume/resume_data/resume_data.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/settings_repo.dart';
import 'package:jobpilot/src/features/settings/views/edit_resume.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class PersonalSettingsController extends GetxController
    with BaseControllerSystem {
  @override
  onInit() {
    super.onInit();
    fetchCurrentPersonalData();
    getResumeList();
  }

  onAddResumeClick() async {
    final res = await Get.to(() => const EditResumeScreen());
    if (res is bool && res == true) {
      getResumeList(isRefresh: true);
    }
  }

  final _settingsRepo = SettingsRepository();
  File? profileImage;
  PersonalSettingData? currentPersonalData;
  List<ExperienceList>? get experienceOptions =>
      currentPersonalData?.experienceList;
  List<EducationList>? get educationOptions =>
      currentPersonalData?.educationList;

  updateProfileImage(File imageFile) {
    profileImage = imageFile;
    update();
  }

  updateName(String data) {
    currentPersonalData = currentPersonalData?.copyWith(name: data);
    update();
  }

  updateTitle(String data) {
    currentPersonalData = currentPersonalData?.copyWith(title: data);
    update();
  }

  updateWebsite(String data) {
    currentPersonalData = currentPersonalData?.copyWith(website: data);
    update();
  }

  updateBirthDate(String data) {
    currentPersonalData = currentPersonalData?.copyWith(dateOfBirth: data);
    update();
  }

  updateExperienceId(int data) {
    currentPersonalData = currentPersonalData?.copyWith(experienceId: data);
    update();
  }

  updateEducationId(int data) {
    currentPersonalData = currentPersonalData?.copyWith(educationId: data);
    update();
  }

  fetchCurrentPersonalData({bool isRefresh = false}) async {
    try {
      if (!isRefresh) setLoadingStatus(true);
      final res = await _settingsRepo.fetchCandidatePersonalData();
      if (res.isSuccess) {
        currentPersonalData = res.data!;
        update();
      } else {
        showToastError(res.errorMsg);
      }
      if (!isRefresh) setLoadingStatus(false);
    } catch (e, s) {
      if (!isRefresh) setLoadingStatus(false);
      log("#FetchPersonalDataError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  Future saveCurrentPersonalData() async {
    try {
      final res = await _settingsRepo.updateCandidatePersonalData(
        profileImage: profileImage,
        settingsData: currentPersonalData!,
      );
      if (res.isSuccess) {
        await fetchCurrentPersonalData(isRefresh: true);
        showToastSuccess(res.message!);
        update();
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#SavePersonalDataError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  List<ResumeData>? resumeList;
  getResumeList({bool isRefresh = false}) async {
    try {
      if (!isRefresh) setLoadingStatus(true);
      final res = await _settingsRepo.fetchResumeList();
      if (res.isSuccess) {
        resumeList = res.data!;
        update();
      } else {
        showToastError(res.errorMsg);
      }
      if (!isRefresh) setLoadingStatus(false);
    } catch (e, s) {
      if (!isRefresh) setLoadingStatus(false);
      log("#GetResumeListError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

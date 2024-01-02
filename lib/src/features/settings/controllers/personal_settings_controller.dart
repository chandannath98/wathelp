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
  final nameTextController = TextEditingController();
  final headlineTextController = TextEditingController();
  final birthDateTextController = TextEditingController();
  final websiteTextController = TextEditingController();

  @override
  onInit() {
    super.onInit();
    fetchCurrentPersonalData();
    getResumeList();
  }

  @override
  onClose() {
    nameTextController.dispose();
    headlineTextController.dispose();
    birthDateTextController.dispose();
    websiteTextController.dispose();
  }

  onAddResumeClick() async {
    final res = await Get.to(() => const EditResumeScreen());
    if (res is bool && res == true) {
      getResumeList(isRefresh: true);
    }
  }

  onEditResume(ResumeData data) async {
    final res = await Get.to(
      () => EditResumeScreen(
        resumeData: data,
      ),
    );
    if (res is bool && res == true) {
      getResumeList(isRefresh: true);
    }
  }

  onDeleteResume(ResumeData data) async {
    try {
      final res = await _settingsRepo.deleteResume(id: data.id!);
      if (res.isSuccess) {
        await getResumeList(isRefresh: true);
        showToastSuccess(res.data!.message!);
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#DeleteResumeError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  final _settingsRepo = SettingsRepository();
  File? profileImage;
  PersonalSettingData? currentPersonalData;
  List<ExperienceList> experienceOptions = [];
  List<EducationList> educationOptions = [];

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
    birthDateTextController.text = data;
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

  handleNewPersonalSettingsData(PersonalSettingData? newSettings) {
    if (newSettings == null) return;
    currentPersonalData = newSettings;
    nameTextController.text = currentPersonalData?.name ?? "";
    headlineTextController.text = currentPersonalData?.title ?? "";
    birthDateTextController.text = currentPersonalData?.dateOfBirth ?? "";
    websiteTextController.text = currentPersonalData?.website ?? "";

    if (newSettings.educationList != null) {
      educationOptions = newSettings.educationList!;
    }
    if (newSettings.experienceList != null) {
      experienceOptions = newSettings.experienceList!;
    }
    update();
  }

  fetchCurrentPersonalData({bool isRefresh = false}) async {
    try {
      if (!isRefresh) setLoadingStatus(true);
      final res = await _settingsRepo.fetchCandidatePersonalData();
      if (res.isSuccess) {
        handleNewPersonalSettingsData(res.data);
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
        handleNewPersonalSettingsData(res.data?.data);
        showToastSuccess(res.data!.message!);
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

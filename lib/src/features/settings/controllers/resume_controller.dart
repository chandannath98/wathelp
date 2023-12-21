import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/resume/resume_data/resume_data.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/settings_repo.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class ResumeController extends GetxController with BaseControllerSystem {
  final ResumeData? currentResume;
  ResumeController({this.currentResume});

  static const _nameKey = "name";
  static const _resumeKey = "resume";
  static const _bytesToMB = 1000000;

  late final TextEditingController resumeNameController;
  @override
  void onInit() {
    super.onInit();
    resumeNameController = TextEditingController(text: currentResume?.name);
  }

  @override
  void dispose() {
    resumeNameController.dispose();
    super.dispose();
  }

  Map<String, String> errorMap = {};
  File? selectedResumeFile;
  double? resumeSize;
  double? get getResumeSize =>
      resumeSize ??
      double.tryParse(currentResume?.fileSize?.split(" ").firstOrNull ?? "");
  String? get resumeName =>
      selectedResumeFile?.path.split("/").lastOrNull ?? currentResume?.name;

  nameValidationCheck() {
    if (resumeNameController.text.isEmpty) {
      errorMap.addAll({_nameKey: "*Insert a valid resume name."});
      return;
    }
    errorMap.remove(_nameKey);
  }

  String? get nameError => errorMap[_nameKey];
  String? get resumeError => errorMap[_resumeKey];

  resumeValidationCheck() {
    if (selectedResumeFile == null) {
      errorMap.addAll({_resumeKey: "*Insert a valid resume."});
      return;
    }
    if (resumeSize! > 12) {
      errorMap.addAll({_resumeKey: "*Resume size is more than 12MB."});
      return;
    }
    errorMap.remove(_resumeKey);
  }

  setResumeFile(File resume) async {
    selectedResumeFile = resume;
    resumeSize = (await resume.length()) / _bytesToMB;
    resumeValidationCheck();
    update();
  }

  final _settingsController = SettingsRepository();
  Future createResume() async {
    try {
      nameValidationCheck();
      resumeValidationCheck();
      if (errorMap.isNotEmpty) {
        update();
        return;
      }
      final res = await _settingsController.uploadResume(
        resumeFileName: resumeName!,
        resumeFile: selectedResumeFile!,
        resumeName: resumeNameController.text,
      );
      if (res.isSuccess) {
        showToastSuccess(res.data!.message!);
        Get.back(result: res.data?.data != null);
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#CreateResumeError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  Future updateResume() async {
    try {
      final res = await _settingsController.updateResume(
        id: currentResume!.id!,
        resumeFileName: resumeName,
        resumeFile: selectedResumeFile,
        resumeName: resumeNameController.text,
      );
      if (res.isSuccess) {
        Get.back(result: res.data!.data!.id != null);
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#UpdateResumeError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

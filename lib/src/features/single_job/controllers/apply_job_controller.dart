import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/resume/resume_data/resume_data.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/settings_repo.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class ApplyJobController extends GetxController with BaseControllerSystem {
  final int jobId;
  ApplyJobController({required this.jobId});

  final _jobRepo = JobsRepository();
  final coverLetterController = TextEditingController();

  @override
  void dispose() {
    coverLetterController.dispose();
    super.dispose();
  }

  @override
  onReady() {
    getResumeList();
  }

  List<ResumeData>? resumeList;
  final _settingsRepo = SettingsRepository();
  getResumeList() async {
    try {
      setLoadingStatus(true);
      final res = await _settingsRepo.fetchResumeList();
      if (res.isSuccess) {
        resumeList = res.data!;
        update();
      } else {
        showToastError(res.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#GetResumeListError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  int? selectedResumeId;
  onResumeSelect(int resumeId) {
    selectedResumeId = resumeId;
    update();
  }

  Future apply() async {
    try {
      if (selectedResumeId == null) {
        showToastWarning("Select a resume first!");
        return;
      }

      final res = await _jobRepo.candidateApplyJob(
        jobId: jobId,
        resumeId: selectedResumeId!,
        coverLetter: coverLetterController.text,
      );
      if (res.isSuccess) {
        showToastSuccess(res.data!.message!);
        Get.back(result: res.data?.status);
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#ApplyJobError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

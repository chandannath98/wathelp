import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/contact_settings/candidate_contact_setting/candidate_contact_setting_data.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/settings_repo.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class ContactController extends GetxController with BaseControllerSystem {
  late final TextEditingController phoneTextController;
  late final TextEditingController secondaryPhoneTextController;
  late final TextEditingController whatsappTextController;
  late final TextEditingController secondaryEmailTextController;

  @override
  void onInit() {
    super.onInit();
    phoneTextController = TextEditingController();
    secondaryPhoneTextController = TextEditingController();
    whatsappTextController = TextEditingController();
    secondaryEmailTextController = TextEditingController();
    fetchContactSettingsData();
  }

  @override
  void dispose() {
    phoneTextController.dispose();
    secondaryPhoneTextController.dispose();
    whatsappTextController.dispose();
    secondaryEmailTextController.dispose();
    super.dispose();
  }

  CandidateContactSettingData? data;
  ContactInfo? get contactData => data?.contactInfo;

  final _settingsRepo = SettingsRepository();
  fetchContactSettingsData() async {
    try {
      setLoadingStatus();
      final res = await _settingsRepo.fetchCandidateContactData();
      if (res.isSuccess) {
        data = res.data!;
        phoneTextController.text = data?.contactInfo?.phone ?? "";
        secondaryEmailTextController.text =
            data?.contactInfo?.secondaryEmail ?? "";
        whatsappTextController.text = data?.contactInfo?.whatsappNo ?? "";
        secondaryPhoneTextController.text =
            data?.contactInfo?.secondaryPhone ?? "";
        update();
      } else {
        showToastError(res.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#ContactSettingFetchError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

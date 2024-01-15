import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/contact_settings/candidate_contact_setting/candidate_contact_setting_data.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/settings_repo.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class ContactController extends GetxController with BaseControllerSystem {
  late final TextEditingController phoneTextController;
  late final TextEditingController secondaryPhoneTextController;
  late final TextEditingController whatsappTextController;
  late final TextEditingController secondaryEmailTextController;

  /* Password Change */
  late final TextEditingController passwordController;
  late final TextEditingController newPasswordController;
  late final TextEditingController confirmPasswordController;

  bool hidePasswords = true;
  changeHidePasswords([bool? state]) {
    hidePasswords = state ?? !hidePasswords;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    phoneTextController = TextEditingController();
    secondaryPhoneTextController = TextEditingController();
    whatsappTextController = TextEditingController();
    secondaryEmailTextController = TextEditingController();
    passwordController = TextEditingController();
    newPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    fetchContactSettingsData();
  }

  @override
  void dispose() {
    phoneTextController.dispose();
    secondaryPhoneTextController.dispose();
    whatsappTextController.dispose();
    secondaryEmailTextController.dispose();
    passwordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
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

  Future saveCurrentContactData() async {
    try {
      final res = await _settingsRepo.updateCandidateContactData(data: {
        "whatsapp_number": whatsappTextController.text,
        "phone": phoneTextController.text,
        "secondary_phone": secondaryPhoneTextController.text,
        "email": secondaryEmailTextController.text,
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

  Future updateUserPassword() async {
    try {
      final res = await _settingsRepo.updatePassword(
        newPassword: newPasswordController.text,
        currentPassword: passwordController.text,
        confirmPassword: confirmPasswordController.text,
      );
      if (res.isSuccess) {
        passwordController.clear();
        newPasswordController.clear();
        confirmPasswordController.clear();
        changeHidePasswords(false);
        showToastSuccess(res.data!);
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#UpdateUserPasswordError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  Future deleteUserAccount(String currentPassword) async {
    try {
      final res = await _settingsRepo.deleteAccount(currentPassword);
      if (res.isSuccess) {
        Get.back();
        showToastSuccess(res.data!);
        await AuthController.find.removeAuthCredentials();
        await AuthController.find.handleTokenError(showToast: false);
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#DeleteUserAccountError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/settings/views/edit_resume.dart';

class PersonalSettingsController extends GetxController {
  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  final firstNameFocus = FocusNode();
  final firstNameController = TextEditingController();
  final lastNameFocus = FocusNode();
  final lastNameController = TextEditingController();

  onAddResumeClick() => Get.to(() => const EditResumeScreen());
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialSettingsController extends GetxController {
  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  final firstNameFocus = FocusNode();
  final firstNameController = TextEditingController();
  final lastNameFocus = FocusNode();
  final lastNameController = TextEditingController();
}

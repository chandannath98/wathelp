import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/models/user/user.dart';
import 'package:jobpilot/src/features/authentication/views/registration.dart';
import 'package:jobpilot/src/features/notification/views/notification.dart';
import 'package:jobpilot/src/features/settings/views/settings.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';

class HomepageController extends GetxController {
  static HomepageController get find => Get.find();
  int currentIndex = 0;
  final int loginPageIndex = 3;
  bool get isAuthenticated => AuthController.find.isAuthenticated;
  User? get currentUser => AuthController.find.currentUser;
  bool get isLoginScreen =>
      (!isAuthenticated);
      // (!isAuthenticated && currentIndex == loginPageIndex);
  late final PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(keepPage: true);
    AuthController.find.addListener(() => update());
  }

  void changePage(int index) {
    pageController.animateToPage(
      index,
      curve: Curves.ease,
      duration: const Duration(milliseconds: 380),
    );
  }

  void onPageChange(int index) {
    currentIndex = index;
    update();
  }

  void onLoginClick() {
    pageController.jumpToPage(
      loginPageIndex,
      // curve: Curves.ease,
      // duration: const Duration(milliseconds: 380),
    );
    update();
  }

  Future<void> onRegisterClick() async {
    Get.to(
      () => const RegistrationScreen(),
      transition: Transition.rightToLeft,
    );
    update();
  }

  void onNotificationClick() => Get.to(() => const NotificationScreen());

  Future<void> onProfileClick() async {
    Get.to(() => const SettingsScreen());
  }
}

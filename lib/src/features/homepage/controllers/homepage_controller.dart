import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/authentication/views/registration.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';

class HomepageController extends GetxController {
  final int loginPageIndex = 2;
  int currentIndex = 0;
  bool get isAuthenticated => AuthController.find.isAuthenticated;
  bool get isLoginScreen =>
      (!isAuthenticated && currentIndex == loginPageIndex);
  late final PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    AuthController.find.addListener(() {
      update();
    });
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
    pageController.animateToPage(
      loginPageIndex,
      curve: Curves.ease,
      duration: const Duration(milliseconds: 380),
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

  void onNotificationClick() {}

  Future<void> onProfileClick() async {
    await AuthController.find.logOut();
    update();
  }
}

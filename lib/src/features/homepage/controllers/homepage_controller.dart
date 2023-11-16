import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/authentication/views/login.dart';
import 'package:jobpilot/src/features/authentication/views/registration.dart';

class HomepageController extends GetxController {
  int currentIndex = 0;
  bool isAuthenticated = false;
  bool isRegisterScreen = false;
  bool get isLoginScreen =>
      (!isAuthenticated && currentIndex == 2 && !isRegisterScreen);
  late final PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
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
    print("Current Index : $currentIndex");
    print(isLoginScreen);
    update();
  }

  void onLoginClick() {
    print("Login Clicked!");
    isRegisterScreen = false;
    // Get.to(
    //   () => const LoginScreen(),
    //   transition: Transition.rightToLeft,
    // );
    update();
  }

  void onForgotpassClick() {
    isRegisterScreen = true;
    print("Forgotpass Clicked!");
  }

  Future<void> onRegisterClick() async {
    print("Register Clicked!");
    Get.to(
      () => const RegistrationScreen(),
      transition: Transition.rightToLeft,
    );
    update();
  }

  void onNotificationClick() {}

  Future<void> onProfileClick() async {
    await Future.delayed(const Duration(seconds: 3));
    isAuthenticated = !isAuthenticated;
    update();
  }
}

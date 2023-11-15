import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/authentication/views/login.dart';

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

  Future<void> onLoginClick() async {
    print("Login Clicked!");
    isRegisterScreen = false;
    // Get.to(
    //   () => const LoginScreen(),
    //   transition: Transition.rightToLeft,
    // );
    update();
  }

  Future<void> onRegisterClick() async {
    isRegisterScreen = true;
    print("Register Clicked!");
    update();
  }

  void onNotificationClick() {}

  Future<void> onProfileClick() async {
    await Future.delayed(const Duration(seconds: 3));
    isAuthenticated = !isAuthenticated;
    update();
  }
}

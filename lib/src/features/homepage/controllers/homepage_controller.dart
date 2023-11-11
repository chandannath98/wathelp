import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomepageController extends GetxController {
  bool isAuthenticated = false;
  int currentIndex = 0;
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
    update();
  }

  Future<void> onLoginClick() async {
    await Future.delayed(const Duration(seconds: 3));
    isAuthenticated = !isAuthenticated;
    update();
  }

  void onNotificationClick() {}

  Future<void> onProfileClick() async {
    await Future.delayed(const Duration(seconds: 3));
    isAuthenticated = !isAuthenticated;
    update();
  }
}

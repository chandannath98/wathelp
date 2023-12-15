import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/authentication/views/login.dart';
import 'package:jobpilot/src/features/authentication/views/registration.dart';
import 'package:jobpilot/src/features/homepage/controllers/homepage_controller.dart';
import 'package:jobpilot/src/features/settings/views/settings.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';

class MenuPageController extends GetxController {
  bool get isAuthenticated => AuthController.find.isAuthenticated;

  @override
  void onInit() {
    super.onInit();
    AuthController.find.addListener(() => update());
  }

  _moveToHomePageIndex(int index) {
    if (!HomepageController.find.isClosed &&
        HomepageController.find.pageController.hasClients) {
      HomepageController.find.pageController.animateToPage(
        index,
        duration: 320.milliseconds,
        curve: Curves.ease,
      );
    }
  }

  gotoRegistration() => Get.to(
        () => const RegistrationScreen(
          showLoginButton: false,
        ),
      );
  gotoLogin() => Get.to(
        () => const LoginScreen(
            // showLoginButton: false,
            ),
      );

// Pages
  gotoHomePage() => _moveToHomePageIndex(0);
  gotoBrowsePage() => _moveToHomePageIndex(1);
  gotoPricing() => _moveToHomePageIndex(3);

// Candidate Section
  gotoDashboard() => _moveToHomePageIndex(2);
  gotoAppliedJobs() => _moveToHomePageIndex(3);
  gotoFavoriteJobs() {}
  gotoSettings() => Get.to(() => const SettingsScreen());

// About Us
  gotoBlogs() {}
  gotoAbout() {}
  gotoContact() {}

// Support Section
  gotoFaq() {}
  gotoPrivacyPolicy() {}
  gotoTermsAndConditions() {}
  gotoRefundPolicy() {}
}

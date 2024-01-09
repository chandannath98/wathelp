import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/features/authentication/views/login_system_switcher.dart';
import 'package:jobpilot/src/features/authentication/views/registration.dart';
import 'package:jobpilot/src/features/browse_section/views/browse_screen.dart';
import 'package:jobpilot/src/features/homepage/controllers/homepage_controller.dart';
import 'package:jobpilot/src/features/menu/views/choose_country.dart';
import 'package:jobpilot/src/features/menu/views/choose_currency.dart';
import 'package:jobpilot/src/features/menu/views/choose_language.dart';
import 'package:jobpilot/src/features/settings/views/settings.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuPageController extends GetxController {
  bool get isAuthenticated => AuthController.find.isAuthenticated;

  @override
  void onInit() {
    super.onInit();
    AuthController.find.addListener(() => update());
  }

  _openLinks(String url) async {
    try {
      final base = API.baseUrl.replaceAll("/api", "");
      final fullURL = base + url;
      final pursedUrl = Uri.parse(fullURL);
      if (await canLaunchUrl(pursedUrl)) {
        launchUrl(pursedUrl, mode: LaunchMode.inAppBrowserView);
      } else {
        log("Can't launch [$fullURL]");
      }
    } catch (e, s) {
      log("#UrlLaunchError", error: e, stackTrace: s);
    }
  }

  _moveToHomePageIndex(int index) {
    if (HomepageController.find.pageController.hasClients) {
      HomepageController.find.pageController.jumpToPage(
        index,
        // duration: 320.milliseconds,
        // curve: Curves.ease,
      );
    }
  }

  gotoRegistration() => Get.to(
        () => const RegistrationScreen(
          showLoginButton: false,
        ),
      );
  gotoLogin() => Get.to(
        () => const LoginSystemScreen(
            // showLoginButton: false,
            ),
      );

// Pages
  gotoHomePage() => (!isAuthenticated)
      ? _moveToHomePageIndex(0)
      : Get.to(() => const BrowseScreen());
  gotoBrowsePage() => _moveToHomePageIndex(1);
  gotoPricing() => _moveToHomePageIndex(3);

// Jobpilot Section
  gotoChooseLanguage() => Get.to(() => const ChooseLanguageScreen());
  gotoChooseCountry() async {
    await Get.to(() => const ChooseCountryScreen());
    update();
  }

  gotoChooseCurrency() async {
    await Get.to(() => const ChooseCurrencyScreen());
    update();
  }

// Candidate Section
  gotoDashboard() => _moveToHomePageIndex(2);
  gotoAppliedJobs() => _moveToHomePageIndex(3);
  gotoFavoriteJobs() {}
  gotoSettings() => Get.to(() => const SettingsScreen());
  signOut() => AuthController.find.logOut();

// About Us
  browseEmployers() =>
      (isAuthenticated) ? _moveToHomePageIndex(1) : _moveToHomePageIndex(3);
  gotoBlogs() => _openLinks(API.posts);
  gotoAbout() => _openLinks(API.about);
  gotoContact() => _openLinks(API.contacts);

// Support Section
  gotoFaq() => _openLinks(API.faq);
  gotoPrivacyPolicy() => _openLinks(API.privacyPolicy);
  gotoTermsAndConditions() => _openLinks(API.termCondition);
  gotoRefundPolicy() => _openLinks(API.refundPolicy);
}

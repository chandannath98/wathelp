import 'package:get/get_state_manager/get_state_manager.dart';

class HomepageController extends GetxController {
  bool isAuthenticated = false;

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

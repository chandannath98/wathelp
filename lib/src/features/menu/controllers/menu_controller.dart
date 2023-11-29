import 'package:get/get.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';

class MenuController extends GetxController {
  bool get isAuthenticated => AuthController.find.isAuthenticated;

  @override
  void onInit() {
    super.onInit();
    AuthController.find.addListener(() => update());
  }
}

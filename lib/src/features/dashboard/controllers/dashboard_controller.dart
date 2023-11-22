import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/models/user/user.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';

class DashboardController extends GetxController {
  User get currentProfile => AuthController.find.currentUser!;

  @override
  void onInit() {
    AuthController.find.addListener(() => update());
    super.onInit();
  }
}

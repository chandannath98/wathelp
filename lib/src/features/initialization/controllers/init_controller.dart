import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:jobpilot/src/features/homepage/controllers/homepage_controller.dart';

class InitializationController extends GetxController {
  final Function afterInit;

  InitializationController({required this.afterInit});
  static InitializationController get find => Get.find();

  Future<void> initializeApp() async {
    await Future.delayed(const Duration(seconds: 5));
    Get.lazyPut(() => HomepageController());
    await afterInit();
  }
}

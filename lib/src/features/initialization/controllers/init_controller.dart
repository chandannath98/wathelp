import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:jobpilot/src/domain/local_storage/config/hive_config.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/features/homepage/controllers/homepage_controller.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';

class InitializationController extends GetxController {
  final Function afterInit;

  InitializationController({required this.afterInit});
  static InitializationController get find => Get.find();

  Future<void> initializeApp() async {
    await HiveConfig.initialize();
    final authController = Get.put(AuthController(), permanent: true);
    await authController.initializeAuthSystem();

    Get.put(RequestHandler(), permanent: true);
    Get.lazyPut(() => HomepageController());
    await afterInit();
  }
}

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:jobpilot/src/domain/local_storage/config/hive_config.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/utilities/functions.dart';

class InitializationController extends GetxController {
  final Function afterInit;

  InitializationController({required this.afterInit});
  static InitializationController get find => Get.find();

  @override
  onReady() => initializeApp();

  Future<void> initializeApp() async {
    rmvFocus();
    // initializeDateFormatting(locale, url)
    await HiveConfig.initialize();
    Get.put(AuthController(), permanent: true);

    Get.put(RequestHandler(), permanent: true);
    await afterInit();
  }
}

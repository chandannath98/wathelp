import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:jobpilot/src/domain/local_storage/config/hive_config.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/features/homepage/controllers/homepage_controller.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/utilities/functions.dart';

enum InitialAppState {
  loading,
  initialized,
  error,
}

class InitializationController extends GetxController {
  static InitializationController get find => Get.find();

  Object? error;
  StackTrace? stackTrace;
  InitialAppState appState = InitialAppState.loading;

  updateAppState(
    InitialAppState state, [
    Object? e,
    StackTrace? s,
  ]) {
    error = e;
    stackTrace = s;
    appState = state;
    update();
  }

  // _kThrow() => throw "This is a testing error!";

  @override
  onReady() => initializeApp();
  Future<void> initializeApp() async {
    try {
      updateAppState(InitialAppState.loading);
      /* Initializing */
      rmvFocus();
      await HiveConfig.initialize();
      await EasyLocalization.ensureInitialized();
      Get.put(AuthController(), permanent: true);
      Get.put(RequestHandler(), permanent: true);
      Get.put(HomepageController(), permanent: true);
      updateAppState(InitialAppState.initialized);
    } catch (e, s) {
      log("#InitializationError", error: e, stackTrace: s);
      updateAppState(InitialAppState.error, e, s);
    }
  }
}

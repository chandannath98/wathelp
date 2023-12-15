import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig {
  static const themeKey = 'APP_THEME';
  static const tokenKey = 'USER_TOKEN';
  static const profileKey = 'USER_PROFILE';
  static const loginCredKey = 'LOGIN_CREDENTIAL';

  // System related!
  static const jobBoxKey = 'JOB_BOX';
  static const staticBoxKey = 'STATIC_BOX';
  static const settingBoxKey = 'SETTING_BOX';

  static Future<void> initialize() async {
    await Hive.initFlutter();
    await Hive.openBox<bool>(themeKey);
    await Hive.openBox<String>(tokenKey);
    await Hive.openBox<String>(profileKey);
    await Hive.openBox<String>(loginCredKey);

    // System related!
    await Hive.openBox(jobBoxKey);
    await Hive.openBox(staticBoxKey);
    await Hive.openBox(settingBoxKey);
  }

  Box<bool> get themeBox => Hive.box(themeKey);
  Box<String> get tokenBox => Hive.box(tokenKey);
  Box<String> get profileBox => Hive.box(profileKey);
  Box<String> get loginCredBox => Hive.box(loginCredKey);

  // System related!
  Box get jobBox => Hive.box(jobBoxKey);
  Box get staticBox => Hive.box(staticBoxKey);
  Box get settingsBox => Hive.box(settingBoxKey);

  Future<void> dispose() async {
    tokenBox.clear();
    profileBox.clear();
  }
}

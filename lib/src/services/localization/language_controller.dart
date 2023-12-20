import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/language/language/language.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/language/language_response/language_response.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/settings_repo.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class LanguageController extends GetxController with BaseControllerSystem {
  LanguageResponse? serverLanguageSetting;
  int? get currentSelectedId => serverLanguageSetting?.currentLanguage;
  List<Language>? get serverLanguageList => serverLanguageSetting?.languages;
  final _settingsRepo = SettingsRepository();

  @override
  onInit() {
    super.onInit();
    fetchServerLanguageList();
  }

  fetchServerLanguageList() async {
    try {
      final res = await _settingsRepo.fetchLanguages();
      if (res.isSuccess) {
        serverLanguageSetting = res.data!;
        update();
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#FetchServerLanguageError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

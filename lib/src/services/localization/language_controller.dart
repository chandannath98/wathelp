import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/language/language/language.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/settings_repo.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class LanguageController extends GetxController with BaseControllerSystem {
  final _settingsRepo = SettingsRepository();
  final _staticStorage = StaticStorage();

  @override
  onInit() {
    super.onInit();
    fetchServerLanguageList();
  }

  String? get currentLangCode => Get.context?.locale.languageCode;

  onLanguageSelect(Language language) async {
    await Get.context!.setLocale(language.toLocale);
    Get.updateLocale(language.toLocale);
    _staticStorage.setSelectedLanguage(language);
    update();
  }

  List<Language>? get serverLanguageList => _staticStorage.languageList;
  fetchServerLanguageList() async {
    try {
      if (serverLanguageList == null) setLoadingStatus();
      final res = await _settingsRepo.fetchLanguages();
      if (res.isSuccess) {
        final langResponse = res.data!;
        final availableLocales = Get.context?.supportedLocales ?? [];
        _staticStorage.saveLanguageList(
          langResponse.languages
                  ?.where((webLang) => availableLocales
                      .any((locale) => locale.languageCode == webLang.code))
                  .toList() ??
              [],
        );
        update();
      } else {
        showToastError(res.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#FetchServerLanguageError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

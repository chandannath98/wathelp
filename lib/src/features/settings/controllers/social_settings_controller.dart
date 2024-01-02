import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/social_settings/response/social_setting_data.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/settings_repo.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

const _socialImageMap = {
  "facebook": "https://cdn-icons-png.flaticon.com/128/4401/4401395.png",
  "twitter": "https://cdn-icons-png.flaticon.com/128/3670/3670151.png",
  "instagram": "https://cdn-icons-png.flaticon.com/128/1409/1409946.png",
  "youtube": "https://cdn-icons-png.flaticon.com/128/3938/3938026.png",
  "linkedin": "https://cdn-icons-png.flaticon.com/128/3536/3536505.png",
  "pinterest": "https://cdn-icons-png.flaticon.com/128/3536/3536559.png",
  "reddit": "https://cdn-icons-png.flaticon.com/128/3536/3536761.png",
  "github": "https://cdn-icons-png.flaticon.com/128/3291/3291695.png",
  "other": "https://cdn-icons-png.flaticon.com/128/2065/2065157.png"
};

class SocialSettingsController extends GetxController
    with BaseControllerSystem {
  @override
  void onInit() {
    super.onInit();
    fetchCurrentSocialData();
  }

  SocialSettingData? currentSettings;
  List<SocialMedia>? get userSocials => currentSettings?.socialMedia;
  Map<String, String>? get socialOptions => currentSettings?.socialMediaList;

  String getImageLink(String key) =>
      _socialImageMap[key] ?? _socialImageMap["other"]!;

  final _settingsRepo = SettingsRepository();
  fetchCurrentSocialData({bool isRefresh = false}) async {
    try {
      if (!isRefresh) setLoadingStatus(true);
      final res = await _settingsRepo.fetchCandidateSocialData();
      if (res.isSuccess) {
        currentSettings = res.data!;
        update();
      } else {
        showToastError(res.errorMsg);
      }
      if (!isRefresh) setLoadingStatus(false);
    } catch (e, s) {
      if (!isRefresh) setLoadingStatus(false);
      log("#FetchPersonalDataError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  Future addNewSocialLink(({String key, String url}) data) async {
    try {
      final res = await _settingsRepo.submitNewSocialData(data);
      print(res.data);
      if (res.isSuccess) {
        fetchCurrentSocialData(isRefresh: true);
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#AddNewSocialError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

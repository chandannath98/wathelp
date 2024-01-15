import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/social_settings/response/social_setting_data.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/settings_repo.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

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
      final currentDataList = userSocials
              ?.map((e) => (key: e.socialMedia ?? "", url: e.url ?? ""))
              .toList() ??
          [];
      final res = await _settingsRepo.updateSocialData([
        ...currentDataList,
        data,
      ]);
      if (res.isSuccess) {
        await fetchCurrentSocialData(isRefresh: true);
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#AddNewSocialError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }

  Future removeSocialLink(int id) async {
    try {
      final newSocials = [
        ...?userSocials?.where((element) => element.id != id)
      ];
      final currentDataList = newSocials
          .map((e) => (key: e.socialMedia ?? "", url: e.url ?? ""))
          .toList();
      final res = await _settingsRepo.updateSocialData(currentDataList);
      if (res.isSuccess) {
        await fetchCurrentSocialData(isRefresh: true);
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#RemoveSocialError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

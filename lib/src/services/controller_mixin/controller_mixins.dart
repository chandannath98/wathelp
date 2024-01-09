import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/country/country_data.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/server_static_repo.dart';
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
  "whatsapp": "https://cdn-icons-png.flaticon.com/128/1384/1384055.png",
  "other": "https://cdn-icons-png.flaticon.com/128/2065/2065157.png"
};

mixin BaseControllerSystem on GetxController {
  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }

  String getImageLink(String key) =>
      _socialImageMap[key] ?? _socialImageMap["other"]!;

  final _staticStorage = StaticStorage();
  final _staticRepo = ServerStaticRepository();

  List<CountryData>? $countryList() => _staticStorage.countryList;

  setCountryLists() async {
    try {
      final res = await _staticRepo.fetchCountryList();
      if (res.isSuccess) {
        await _staticStorage.saveCountryList(res.data!);
        update();
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#FetchCountryListError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

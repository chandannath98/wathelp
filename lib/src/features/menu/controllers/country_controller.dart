import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/country/country_data.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/server_static_repo.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class CountryController extends GetxController with BaseControllerSystem {
  final _settingsRepo = ServerStaticRepository();
  final _staticStorage = StaticStorage();

  @override
  onInit() {
    super.onInit();
    fetchServerCountryList();
  }

  onCountrySelect(CountryData country) async {
    await _staticStorage.selectCountry(country);
    update();
  }

  List<CountryData>? get countryList => _staticStorage.countryList;

  fetchServerCountryList() async {
    try {
      if (countryList == null) setLoadingStatus();
      final res = await _settingsRepo.fetchCountryList();
      if (res.isSuccess) {
        final countryList = res.data!;
        _staticStorage.saveCountryList(countryList);
        update();
      } else {
        showToastError(res.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#FetchServerCountryListError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

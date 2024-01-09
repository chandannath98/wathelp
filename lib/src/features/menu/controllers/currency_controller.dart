import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/currency/currency_data.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/server_static_repo.dart';
import 'package:jobpilot/src/services/controller_mixin/controller_mixins.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class CurrencyController extends GetxController with BaseControllerSystem {
  final _settingsRepo = ServerStaticRepository();
  final _staticStorage = StaticStorage();

  @override
  onInit() {
    super.onInit();
    fetchServerCurrencyList();
  }

  onCurrencySelect(CurrencyData currency) async {
    await _staticStorage.selectCurrency(currency);
    update();
  }

  List<CurrencyData>? get currencyList => _staticStorage.currencyList;

  fetchServerCurrencyList() async {
    try {
      if (currencyList == null) setLoadingStatus();
      final res = await _settingsRepo.fetchCurrencyList();
      if (res.isSuccess) {
        final currencyList = res.data!;
        _staticStorage.saveCurrencyList(currencyList);
        update();
      } else {
        showToastError(res.errorMsg);
      }
      setLoadingStatus(false);
    } catch (e, s) {
      setLoadingStatus(false);
      log("#FetchServerCurrencyListError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
  }
}

import 'dart:convert';

import 'package:jobpilot/src/domain/local_storage/config/hive_config.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/country/country_data.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/currency/currency_data.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/popular_tag/popular_tag.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/language/language/language.dart';

class StaticStorage {
  static final config = HiveConfig();
  static const expireDateKey = "#EXPIRE_DATE";
  static const expirePeriod = Duration(days: 3);
  updateExpireDate() =>
      config.staticBox.put(expireDateKey, DateTime.now().toIso8601String());

  DateTime? get expireDate {
    final date = config.staticBox.get(expireDateKey);
    return date == null ? null : DateTime.parse(date);
  }

  bool get isExpired =>
      expireDate == null ||
      expireDate!.isBefore(DateTime.now().subtract(expirePeriod));

// Tags.
  static const popularTagsKey = '#POPULAR_TAGS';
  savePopularTags(List<PopularTag> data) async {
    updateExpireDate();
    await config.staticBox.put(
      popularTagsKey,
      data.map((e) => json.encode(e.toJson())).toList(),
    );
  }

  List<PopularTag>? get popularTag {
    final List? string = config.staticBox.get(popularTagsKey);
    return string != null
        ? (string.cast<String>())
            .map((type) => PopularTag.fromJson(json.decode(type)))
            .toList()
        : null;
  }

// Countries.
  static const countryListKey = '#COUNTRY_LIST';
  static const selectedCountryKey = '#SELECTED_COUNTRY';

  selectCountry(CountryData data) async {
    updateExpireDate();
    await config.staticBox.put(
      selectedCountryKey,
      json.encode(data.toJson()),
    );
  }

  static CountryData? get selectedCountry {
    final String? string = config.staticBox.get(selectedCountryKey);
    return string != null ? CountryData.fromJson(json.decode(string)) : null;
  }

  saveCountryList(List<CountryData> data) async {
    updateExpireDate();
    await config.staticBox.put(
      countryListKey,
      data.map((e) => json.encode(e.toJson())).toList(),
    );
  }

  List<CountryData>? get countryList {
    final List? string = config.staticBox.get(countryListKey);
    return string != null
        ? (string.cast<String>())
            .map((type) => CountryData.fromJson(json.decode(type)))
            .toList()
        : null;
  }

// Currency
  static const currencyListKey = '#CURRENCY_LIST';
  static const selectedCurrencyKey = '#SELECTED_CURRENCY';

  selectCurrency(CurrencyData data) async {
    updateExpireDate();
    await config.staticBox.put(
      selectedCurrencyKey,
      json.encode(data.toJson()),
    );
  }

  static CurrencyData? get selectedCurrency {
    final String? string = config.staticBox.get(selectedCurrencyKey);
    return string != null ? CurrencyData.fromJson(json.decode(string)) : null;
  }

  saveCurrencyList(List<CurrencyData> data) async {
    updateExpireDate();
    await config.staticBox.put(
      currencyListKey,
      data.map((e) => json.encode(e.toJson())).toList(),
    );
  }

  List<CurrencyData>? get currencyList {
    final List? string = config.staticBox.get(currencyListKey);
    return string != null
        ? (string.cast<String>())
            .map((type) => CurrencyData.fromJson(json.decode(type)))
            .toList()
        : null;
  }

// Languages.
  static const languageListKey = '#LANGUAGE_LIST';
  static const selectedLanguageKey = '#SELECTED_LANGUAGE';

  setSelectedLanguage(Language data) async {
    updateExpireDate();
    await config.staticBox.put(
      selectedLanguageKey,
      json.encode(data.toJson()),
    );
  }

  static Language? get selectedLanguage {
    final String? string = config.staticBox.get(selectedLanguageKey);
    return string != null ? Language.fromJson(json.decode(string)) : null;
  }

  saveLanguageList(List<Language> data) async {
    updateExpireDate();
    await config.staticBox.put(
      languageListKey,
      data.map((e) => json.encode(e.toJson())).toList(),
    );
  }

  List<Language>? get languageList {
    final List? string = config.staticBox.get(languageListKey);
    return string != null
        ? (string.cast<String>())
            .map((type) => Language.fromJson(json.decode(type)))
            .toList()
        : null;
  }

  clearStatic() async {}
}

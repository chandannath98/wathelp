import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/country/country_data.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/currency/currency_data.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/popular_tag/popular_tag.dart';

class ServerStaticRepository extends ServerRepo {
  Future<ResponseWrapper<List<PopularTag>>> fetchPopularTags() async {
    try {
      final response = await requestHandler.get(API.popularTag);
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => (json as List)
            .map(
              (jobData) => PopularTag.fromJson(jobData),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<List<CountryData>>> fetchCountryList() async {
    try {
      final response = await requestHandler.get(API.country);
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => (json as List)
            .map(
              (jobData) => CountryData.fromJson(jobData),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<List<CurrencyData>>> fetchCurrencyList() async {
    try {
      final response = await requestHandler.get(API.currency);
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => (json as List)
            .map(
              (jobData) => CurrencyData.fromJson(jobData),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }
}

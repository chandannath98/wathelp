import 'package:jobpilot/src/domain/server/config/repository.dart';

import 'models/company/company.dart';
import 'models/single_company/company_details_response.dart';

class CompanyRepository extends ServerRepo {
  Future<ResponseWrapper<List<Company>>> fetchCompanyListData() async {
    try {
      final response = await requestHandler.get(API.company);
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => (json as List)
            .map(
              (json) => Company.fromJson(json),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<CompanyDetailsResponse>> fetchCompanyDetailsData({
    required String userName,
  }) async {
    try {
      final path = "${API.company}/$userName";
      final response = await requestHandler.get(path);
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => CompanyDetailsResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }
}

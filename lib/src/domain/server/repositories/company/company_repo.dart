import 'package:jobpilot/src/domain/server/config/repository.dart';

import 'models/company/company.dart';

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
}

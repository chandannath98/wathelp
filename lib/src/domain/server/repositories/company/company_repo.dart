import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/company_query/company_query.dart';

import 'models/single_company/company_details_response.dart';
import 'models/search_response/response/paginated_company_list.dart';

class CompanyRepository extends ServerRepo {
  Future<ResponseWrapper<PaginatedCompanyList>> fetchCompanyListData({
    required int pageIndex,
    required int pageSize,
    required CompanyQuery companyQuery,
  }) async {
    try {
      final response = await requestHandler.get(
        API.company,
        queryParams: {
          "page": pageIndex,
          "paginate": pageSize,
          ...companyQuery.toJson(),
        },
      );
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => PaginatedCompanyList.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<CompanyDetailsResponse>> fetchCompanyDetailsData({
    required int pageIndex,
    required int pageSize,
    required String userName,
  }) async {
    try {
      final path = "${API.company}/$userName";
      final response = await requestHandler.get(
        path,
        queryParams: {
          "page": pageIndex,
          "paginate": pageSize,
        },
      );
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

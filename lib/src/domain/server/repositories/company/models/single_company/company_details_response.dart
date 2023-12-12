import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'company_details/company_details.dart';
import 'open_positions/paginated_open_positions_data.dart';
import 'user_info/user/user.dart';

part 'company_details_response.freezed.dart';
part 'company_details_response.g.dart';

@freezed
class CompanyDetailsResponse with _$CompanyDetailsResponse {
  const factory CompanyDetailsResponse({
    @JsonKey(name: 'companyDetails') CompanyDetails? companyDetails,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'open_jobs') PaginatedOpenPositionsData? openJobs,
  }) = _CompanyDetailsResponse;

  factory CompanyDetailsResponse.fromJson(Map<String, Object?> json) =>
      _$CompanyDetailsResponseFromJson(json);
}

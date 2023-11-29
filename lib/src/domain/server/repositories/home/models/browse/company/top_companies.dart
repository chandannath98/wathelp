import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'top_companies.freezed.dart';
part 'top_companies.g.dart';

@freezed
class TopCompanies with _$TopCompanies {
  const factory TopCompanies({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'company_logo') String? companyLogo,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'open_jobs_count') int? openJobsCount,
  }) = _TopCompanies;

  factory TopCompanies.fromJson(Map<String, Object?> json) =>
      _$TopCompaniesFromJson(json);
}

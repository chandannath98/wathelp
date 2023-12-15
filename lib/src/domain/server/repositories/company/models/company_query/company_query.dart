import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_query.freezed.dart';
part 'company_query.g.dart';

enum CompanySearchSort {
  @JsonValue("latest")
  latest,
  @JsonValue("oldest")
  oldest,
}

@freezed
class CompanyQuery with _$CompanyQuery {
  const factory CompanyQuery({
    @JsonKey(name: 'keyword') String? query,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'sortBy') CompanySearchSort? sort,
  }) = _CompanyQuery;

  factory CompanyQuery.fromJson(Map<String, Object?> json) =>
      _$CompanyQueryFromJson(json);
}

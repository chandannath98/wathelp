import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:jobpilot/src/domain/server/repositories/company/models/company/company.dart';

import '../links/links.dart';

part 'paginated_company_list.freezed.dart';
part 'paginated_company_list.g.dart';

@freezed
class PaginatedCompanyList with _$PaginatedCompanyList {
  const factory PaginatedCompanyList({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<Company>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'from') int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'links') List<Links>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'path') String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    @JsonKey(name: 'to') int? to,
    @JsonKey(name: 'total') int? total,
  }) = _PaginatedCompanyList;

  factory PaginatedCompanyList.fromJson(Map<String, Object?> json) =>
      _$PaginatedCompanyListFromJson(json);
}

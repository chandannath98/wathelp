import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../job/job.dart';
import '../pagination_links/links.dart';

part 'paginated_job_list_response.freezed.dart';
part 'paginated_job_list_response.g.dart';

@freezed
class PaginatedJobListResponse with _$PaginatedJobListResponse {
  const factory PaginatedJobListResponse({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<Job>? data,
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
  }) = _PaginatedJobListResponse;

  factory PaginatedJobListResponse.fromJson(Map<String, Object?> json) =>
      _$PaginatedJobListResponseFromJson(json);
}

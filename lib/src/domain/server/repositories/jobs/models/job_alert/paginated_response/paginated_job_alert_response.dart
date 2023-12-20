import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../links/links.dart';

part 'paginated_job_alert_response.g.dart';
part 'paginated_job_alert_response.freezed.dart';

@freezed
class PaginatedJobAlertResponse with _$PaginatedJobAlertResponse {
  const factory PaginatedJobAlertResponse({
    @JsonKey(name: 'notifications') PaginatedJobAlertData? notifications,
    @JsonKey(name: 'message') String? message,
  }) = _PaginatedJobAlertResponse;

  factory PaginatedJobAlertResponse.fromJson(Map<String, Object?> json) =>
      _$PaginatedJobAlertResponseFromJson(json);
}

@freezed
class PaginatedJobAlertData with _$PaginatedJobAlertData {
  const factory PaginatedJobAlertData({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<String>? data,
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
  }) = _PaginatedJobAlertData;

  factory PaginatedJobAlertData.fromJson(Map<String, Object?> json) =>
      _$PaginatedJobAlertDataFromJson(json);
}

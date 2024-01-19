import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../notification_data/notification_data.dart';

part 'paginated_notifications_response.g.dart';
part 'paginated_notifications_response.freezed.dart';

@freezed
class PaginatedNotificationsResponse with _$PaginatedNotificationsResponse {
  const factory PaginatedNotificationsResponse({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'data') List<NotificationData>? data,
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
  }) = _PaginatedNotificationsResponse;

  factory PaginatedNotificationsResponse.fromJson(Map<String, Object?> json) =>
      _$PaginatedNotificationsResponseFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'active') bool? active,
  }) = _Links;

  factory Links.fromJson(Map<String, Object?> json) => _$LinksFromJson(json);
}

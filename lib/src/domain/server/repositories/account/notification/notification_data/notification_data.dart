import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_data.g.dart';
part 'notification_data.freezed.dart';

@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'notifiable_type') String? notifiableType,
    @JsonKey(name: 'notifiable_id') int? notifiableId,
    @JsonKey(name: 'data') Data? data,
    @JsonKey(name: 'read_at') String? readAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _NotificationData;

  const NotificationData._();
  DateTime? get createDate => DateTime.tryParse(createdAt ?? "");

  factory NotificationData.fromJson(Map<String, Object?> json) =>
      _$NotificationDataFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'job_id') int? jobId,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_info.freezed.dart';
part 'contact_info.g.dart';

@freezed
class ContactInfo with _$ContactInfo {
  const factory ContactInfo({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'secondary_phone') String? secondaryPhone,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'secondary_email') String? secondaryEmail,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _ContactInfo;

  factory ContactInfo.fromJson(Map<String, Object?> json) =>
      _$ContactInfoFromJson(json);
}

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_info.freezed.dart';
part 'social_info.g.dart';

@freezed
class SocialInfo with _$SocialInfo {
  const factory SocialInfo({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'social_media') String? socialMedia,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SocialInfo;

  factory SocialInfo.fromJson(Map<String, Object?> json) =>
      _$SocialInfoFromJson(json);
}

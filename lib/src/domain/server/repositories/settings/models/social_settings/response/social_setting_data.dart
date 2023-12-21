import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_setting_data.g.dart';
part 'social_setting_data.freezed.dart';

@freezed
class SocialSettingData with _$SocialSettingData {
  const factory SocialSettingData({
    @JsonKey(name: 'social_media') List<SocialMedia>? socialMedia,
    @JsonKey(name: 'social_media_list') Map<String, String>? socialMediaList,
  }) = _SocialSettingData;

  factory SocialSettingData.fromJson(Map<String, Object?> json) =>
      _$SocialSettingDataFromJson(json);
}

@freezed
class SocialMedia with _$SocialMedia {
  const factory SocialMedia({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'social_media') String? socialMedia,
    @JsonKey(name: 'url') String? url,
  }) = _SocialMedia;

  factory SocialMedia.fromJson(Map<String, Object?> json) =>
      _$SocialMediaFromJson(json);
}

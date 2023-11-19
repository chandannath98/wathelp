import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'social.freezed.dart';
part 'social.g.dart';

@freezed
class Social with _$Social {
  const factory Social({
    @JsonKey(name: 'social_media') String? socialMedia,
    @JsonKey(name: 'url') String? url,
  }) = _Social;

  factory Social.fromJson(Map<String, Object?> json) => _$SocialFromJson(json);
}

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../contact_info/contact_info.dart';
import '../social_info/social_info.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'contact_info') ContactInfo? contactInfo,
    @JsonKey(name: 'social_info') List<SocialInfo>? socialInfo,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

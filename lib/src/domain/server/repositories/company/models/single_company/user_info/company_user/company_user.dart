import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobpilot/src/domain/server/config/repository.dart';

import '../contact_info/contact_info.dart';
import '../social_info/social_info.dart';

part 'company_user.freezed.dart';
part 'company_user.g.dart';

@freezed
class CompanyUser with _$CompanyUser {
  const factory CompanyUser({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'contact_info') ContactInfo? contactInfo,
    @JsonKey(name: 'social_info') List<SocialInfo>? socialInfo,
  }) = _User;

  const CompanyUser._();
  String get webLink => "${API.webUrl}/employer/$username";

  factory CompanyUser.fromJson(Map<String, Object?> json) =>
      _$CompanyUserFromJson(json);
}

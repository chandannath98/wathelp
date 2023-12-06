import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/models/contact_info/contact_info.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/models/social/social.dart';
part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'logo') String? logo,
    @JsonKey(name: 'website') String? website,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'contact_info') ContactInfo? contactInfo,
    @JsonKey(name: 'social_links') Social? socialLinks,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);
}

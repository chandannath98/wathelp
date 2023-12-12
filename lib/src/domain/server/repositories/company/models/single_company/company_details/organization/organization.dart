import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'translations/organization_translations.dart';

part 'organization.freezed.dart';
part 'organization.g.dart';

@freezed
class Organization with _$Organization {
  const factory Organization({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'translations') List<OrganizationTranslations>? translations,
  }) = _Organization;

  factory Organization.fromJson(Map<String, Object?> json) =>
      _$OrganizationFromJson(json);
}

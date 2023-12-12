import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'organization_translations.freezed.dart';
part 'organization_translations.g.dart';

@freezed
class OrganizationTranslations with _$OrganizationTranslations {
  const factory OrganizationTranslations({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'organization_type_id') int? organizationTypeId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'locale') String? locale,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _OrganizationTranslations;

  factory OrganizationTranslations.fromJson(Map<String, Object?> json) =>
      _$OrganizationTranslationsFromJson(json);
}

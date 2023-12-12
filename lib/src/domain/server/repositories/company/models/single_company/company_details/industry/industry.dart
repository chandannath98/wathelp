import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'industry.freezed.dart';
part 'industry.g.dart';

@freezed
class Industry with _$Industry {
  const factory Industry({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'name') String? name,
    // @JsonKey(name: 'translations') List<Translations>? translations,
  }) = _Industry;

  factory Industry.fromJson(Map<String, Object?> json) =>
      _$IndustryFromJson(json);
}

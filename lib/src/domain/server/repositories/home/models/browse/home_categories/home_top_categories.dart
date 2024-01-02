import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_top_categories.g.dart';
part 'home_top_categories.freezed.dart';

@freezed
class HomeTopCategories with _$HomeTopCategories {
  const factory HomeTopCategories({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _HomeTopCategories;

  factory HomeTopCategories.fromJson(Map<String, Object?> json) =>
      _$HomeTopCategoriesFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'popular_categories.freezed.dart';
part 'popular_categories.g.dart';

@freezed
class PopularCategories with _$PopularCategories {
  const factory PopularCategories({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'is_svg') bool? isSvg,
    @JsonKey(name: 'open_jobs_count') int? openJobsCount,
  }) = _PopularCategories;

  factory PopularCategories.fromJson(Map<String, Object?> json) =>
      _$PopularCategoriesFromJson(json);
}

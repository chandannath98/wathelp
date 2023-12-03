import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'job_category.freezed.dart';
part 'job_category.g.dart';

@freezed
class JobCategory with _$JobCategory {
  const factory JobCategory({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
  }) = _JobCategory;

  factory JobCategory.fromJson(Map<String, Object?> json) =>
      _$JobCategoryFromJson(json);
}

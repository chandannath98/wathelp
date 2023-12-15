import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_tag.freezed.dart';
part 'popular_tag.g.dart';

@freezed
class PopularTag with _$PopularTag {
  const factory PopularTag({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'jobs_count') int? jobsCount,
    @JsonKey(name: 'tags_count') int? tagsCount,
  }) = _PopularTag;

  factory PopularTag.fromJson(Map<String, Object?> json) =>
      _$PopularTagFromJson(json);
}

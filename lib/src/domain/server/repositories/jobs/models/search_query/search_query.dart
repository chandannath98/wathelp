import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'search_query.freezed.dart';
part 'search_query.g.dart';

enum JobSortBy {
  @JsonValue("featured")
  featured,
  @JsonValue("latest")
  latest,
}

@freezed
class SearchQuery with _$SearchQuery {
  const factory SearchQuery({
    @JsonKey(name: 'keyword') String? query,
    @JsonKey(name: 'category') int? category,
    @JsonKey(name: 'job_role') int? jobRole,
    @JsonKey(name: 'price_min') int? minPrice,
    @JsonKey(name: 'price_max') int? maxPrice,
    @JsonKey(name: 'tag') String? tag,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'experience') int? experience,
    @JsonKey(name: 'education') int? education,
    @JsonKey(name: 'is_remote') int? isRemote,
    @JsonKey(name: 'job_type') int? jobType,
    @JsonKey(name: 'sort_by') JobSortBy? sortBy,
  }) = _SearchQuery;

  const SearchQuery._();

  bool get hasData => (hasSearchData || hasQueryData);

  bool get hasSearchData => !((query == null || query!.isEmpty) &&
      (location == null || location!.isEmpty));

  bool get hasQueryData => !(tag == null &&
      category == null &&
      jobRole == null &&
      minPrice == null &&
      maxPrice == null &&
      experience == null &&
      education == null &&
      isRemote == null &&
      jobType == null &&
      sortBy == null);

  factory SearchQuery.fromJson(Map<String, Object?> json) =>
      _$SearchQueryFromJson(json);
}

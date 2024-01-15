import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../data/favorite_job.dart';
import '../links/links.dart';
import '../meta/meta.dart';

part 'paginated_favorite_jobs_response.freezed.dart';
part 'paginated_favorite_jobs_response.g.dart';

@freezed
class PaginatedFavoriteJobsResponse with _$PaginatedFavoriteJobsResponse {
  const factory PaginatedFavoriteJobsResponse({
    @JsonKey(name: 'data') List<FavoriteJob>? data,
    @JsonKey(name: 'links') Links? links,
    @JsonKey(name: 'meta') Meta? meta,
  }) = _PaginatedFavoriteJobsResponse;

  factory PaginatedFavoriteJobsResponse.fromJson(Map<String, Object?> json) =>
      _$PaginatedFavoriteJobsResponseFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:jobpilot/src/domain/server/repositories/home/models/browse/home_categories/home_top_categories.dart';

import '../category/popular_categories.dart';
import '../company/top_companies.dart';
import '../feature_job/featured_jobs.dart';
import '../state/states.dart';
import '../testimonial/testimonial.dart';
import '../vacancy/most_popular_vacancies.dart';

part 'browse_data.freezed.dart';
part 'browse_data.g.dart';

@freezed
class BrowseData with _$BrowseData {
  const factory BrowseData({
    @JsonKey(name: 'top_companies') List<TopCompanies>? topCompanies,
    @JsonKey(name: 'featured_jobs') List<FeaturedJobs>? featuredJobs,
    @JsonKey(name: 'states') States? states,
    @JsonKey(name: 'most_popular_vacancies')
    List<MostPopularVacancies>? mostPopularVacancies,
    @JsonKey(name: 'popular_categories')
    List<PopularCategories>? popularCategories,
    @JsonKey(name: 'testimonial') List<Testimonial>? testimonial,
    @JsonKey(name: 'top_categories') List<HomeTopCategories>? topCategories,
  }) = _BrowseData;

  factory BrowseData.fromJson(Map<String, Object?> json) =>
      _$BrowseDataFromJson(json);
}

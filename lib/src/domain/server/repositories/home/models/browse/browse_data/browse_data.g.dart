// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browse_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrowseDataImpl _$$BrowseDataImplFromJson(Map<String, dynamic> json) =>
    _$BrowseDataImpl(
      topCompanies: (json['top_companies'] as List<dynamic>?)
          ?.map((e) => TopCompanies.fromJson(e as Map<String, dynamic>))
          .toList(),
      featuredJobs: (json['featured_jobs'] as List<dynamic>?)
          ?.map((e) => FeaturedJobs.fromJson(e as Map<String, dynamic>))
          .toList(),
      states: json['states'] == null
          ? null
          : States.fromJson(json['states'] as Map<String, dynamic>),
      mostPopularVacancies: (json['most_popular_vacancies'] as List<dynamic>?)
          ?.map((e) => MostPopularVacancies.fromJson(e as Map<String, dynamic>))
          .toList(),
      popularCategories: (json['popular_categories'] as List<dynamic>?)
          ?.map((e) => PopularCategories.fromJson(e as Map<String, dynamic>))
          .toList(),
      testimonial: (json['testimonial'] as List<dynamic>?)
          ?.map((e) => Testimonial.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BrowseDataImplToJson(_$BrowseDataImpl instance) =>
    <String, dynamic>{
      'top_companies': instance.topCompanies,
      'featured_jobs': instance.featuredJobs,
      'states': instance.states,
      'most_popular_vacancies': instance.mostPopularVacancies,
      'popular_categories': instance.popularCategories,
      'testimonial': instance.testimonial,
    };

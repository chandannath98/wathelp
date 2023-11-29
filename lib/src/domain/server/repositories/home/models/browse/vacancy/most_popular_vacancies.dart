import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'most_popular_vacancies.freezed.dart';
part 'most_popular_vacancies.g.dart';

@freezed
class MostPopularVacancies with _$MostPopularVacancies {
  const factory MostPopularVacancies({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'open_position_count') int? openPositionCount,
  }) = _MostPopularVacancies;

  factory MostPopularVacancies.fromJson(Map<String, Object?> json) =>
      _$MostPopularVacanciesFromJson(json);
}

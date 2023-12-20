import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_setting_data.freezed.dart';
part 'personal_setting_data.g.dart';

@freezed
class PersonalSettingData with _$PersonalSettingData {
  const factory PersonalSettingData({
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'education_id') int? educationId,
    @JsonKey(name: 'experience_id') int? experienceId,
    @JsonKey(name: 'website') String? website,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'experience_list') List<ExperienceList>? experienceList,
    @JsonKey(name: 'education_list') List<EducationList>? educationList,
  }) = _PersonalSettingData;

  factory PersonalSettingData.fromJson(Map<String, Object?> json) =>
      _$PersonalSettingDataFromJson(json);
}

@freezed
class ExperienceList with _$ExperienceList {
  const factory ExperienceList({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _ExperienceList;

  factory ExperienceList.fromJson(Map<String, Object?> json) =>
      _$ExperienceListFromJson(json);
}

@freezed
class EducationList with _$EducationList {
  const factory EducationList({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _EducationList;

  factory EducationList.fromJson(Map<String, Object?> json) =>
      _$EducationListFromJson(json);
}

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidate_profile_setting_data.g.dart';
part 'candidate_profile_setting_data.freezed.dart';

enum Gender {
  @JsonValue("male")
  male,
  @JsonValue("female")
  female,
  @JsonValue("other")
  other,
}

enum MaritalStatus {
  @JsonValue("married")
  married,
  @JsonValue("single")
  single,
}

@freezed
class CandidateProfileSettingData with _$CandidateProfileSettingData {
  const factory CandidateProfileSettingData({
    @JsonKey(name: 'gender') Gender? gender,
    @JsonKey(name: 'marital_status') MaritalStatus? maritalStatus,
    @JsonKey(name: 'profession_id') int? professionId,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'availability') String? availability,
    @JsonKey(name: 'available_in') String? availableIn,
    @JsonKey(name: 'skills') List<Skills>? skills,
    @JsonKey(name: 'languages') List<Languages>? languages,
    @JsonKey(name: 'profession_list') List<ProfessionList>? professionList,
    @JsonKey(name: 'skill_list') List<SkillList>? skillList,
    @JsonKey(name: 'language_list') List<LanguageList>? languageList,
  }) = _CandidateProfileSettingData;

  factory CandidateProfileSettingData.fromJson(Map<String, Object?> json) =>
      _$CandidateProfileSettingDataFromJson(json);
}

@freezed
class Skills with _$Skills {
  const factory Skills({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Skills;

  factory Skills.fromJson(Map<String, Object?> json) => _$SkillsFromJson(json);
}

@freezed
class Languages with _$Languages {
  const factory Languages({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Languages;

  factory Languages.fromJson(Map<String, Object?> json) =>
      _$LanguagesFromJson(json);
}

@freezed
class ProfessionList with _$ProfessionList {
  const factory ProfessionList({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _ProfessionList;

  factory ProfessionList.fromJson(Map<String, Object?> json) =>
      _$ProfessionListFromJson(json);
}

@freezed
class SkillList with _$SkillList {
  const factory SkillList({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _SkillList;

  factory SkillList.fromJson(Map<String, Object?> json) =>
      _$SkillListFromJson(json);
}

@freezed
class LanguageList with _$LanguageList {
  const factory LanguageList({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _LanguageList;

  factory LanguageList.fromJson(Map<String, Object?> json) =>
      _$LanguageListFromJson(json);
}

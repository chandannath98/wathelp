// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate_profile_setting_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CandidateProfileSettingDataImpl _$$CandidateProfileSettingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CandidateProfileSettingDataImpl(
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      maritalStatus:
          $enumDecodeNullable(_$MaritalStatusEnumMap, json['marital_status']),
      professionId: json['profession_id'] as int?,
      bio: json['bio'] as String?,
      availability: json['availability'] as String?,
      availableIn: json['available_in'] as String?,
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => Skills.fromJson(e as Map<String, dynamic>))
          .toList(),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => Languages.fromJson(e as Map<String, dynamic>))
          .toList(),
      professionList: (json['profession_list'] as List<dynamic>?)
          ?.map((e) => ProfessionList.fromJson(e as Map<String, dynamic>))
          .toList(),
      skillList: (json['skill_list'] as List<dynamic>?)
          ?.map((e) => SkillList.fromJson(e as Map<String, dynamic>))
          .toList(),
      languageList: (json['language_list'] as List<dynamic>?)
          ?.map((e) => LanguageList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CandidateProfileSettingDataImplToJson(
        _$CandidateProfileSettingDataImpl instance) =>
    <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender],
      'marital_status': _$MaritalStatusEnumMap[instance.maritalStatus],
      'profession_id': instance.professionId,
      'bio': instance.bio,
      'availability': instance.availability,
      'available_in': instance.availableIn,
      'skills': instance.skills,
      'languages': instance.languages,
      'profession_list': instance.professionList,
      'skill_list': instance.skillList,
      'language_list': instance.languageList,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$MaritalStatusEnumMap = {
  MaritalStatus.married: 'married',
  MaritalStatus.single: 'single',
};

_$SkillsImpl _$$SkillsImplFromJson(Map<String, dynamic> json) => _$SkillsImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$SkillsImplToJson(_$SkillsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$LanguagesImpl _$$LanguagesImplFromJson(Map<String, dynamic> json) =>
    _$LanguagesImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$LanguagesImplToJson(_$LanguagesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ProfessionListImpl _$$ProfessionListImplFromJson(Map<String, dynamic> json) =>
    _$ProfessionListImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ProfessionListImplToJson(
        _$ProfessionListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$SkillListImpl _$$SkillListImplFromJson(Map<String, dynamic> json) =>
    _$SkillListImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$SkillListImplToJson(_$SkillListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$LanguageListImpl _$$LanguageListImplFromJson(Map<String, dynamic> json) =>
    _$LanguageListImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$LanguageListImplToJson(_$LanguageListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

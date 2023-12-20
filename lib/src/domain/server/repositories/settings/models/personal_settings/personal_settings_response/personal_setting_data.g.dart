// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_setting_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalSettingDataImpl _$$PersonalSettingDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalSettingDataImpl(
      imageUrl: json['image_url'] as String?,
      name: json['name'] as String?,
      title: json['title'] as String?,
      educationId: json['education_id'] as int?,
      experienceId: json['experience_id'] as int?,
      website: json['website'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      experienceList: (json['experience_list'] as List<dynamic>?)
          ?.map((e) => ExperienceList.fromJson(e as Map<String, dynamic>))
          .toList(),
      educationList: (json['education_list'] as List<dynamic>?)
          ?.map((e) => EducationList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PersonalSettingDataImplToJson(
        _$PersonalSettingDataImpl instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'name': instance.name,
      'title': instance.title,
      'education_id': instance.educationId,
      'experience_id': instance.experienceId,
      'website': instance.website,
      'date_of_birth': instance.dateOfBirth,
      'experience_list': instance.experienceList,
      'education_list': instance.educationList,
    };

_$ExperienceListImpl _$$ExperienceListImplFromJson(Map<String, dynamic> json) =>
    _$ExperienceListImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ExperienceListImplToJson(
        _$ExperienceListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$EducationListImpl _$$EducationListImplFromJson(Map<String, dynamic> json) =>
    _$EducationListImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$EducationListImplToJson(_$EducationListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

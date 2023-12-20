// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguageResponseImpl _$$LanguageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LanguageResponseImpl(
      currentLanguage: json['current_language'] as int?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LanguageResponseImplToJson(
        _$LanguageResponseImpl instance) =>
    <String, dynamic>{
      'current_language': instance.currentLanguage,
      'languages': instance.languages,
    };

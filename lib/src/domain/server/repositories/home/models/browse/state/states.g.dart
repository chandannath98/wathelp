// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'states.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatesImpl _$$StatesImplFromJson(Map<String, dynamic> json) => _$StatesImpl(
      liveJobs: json['live_jobs'] as int?,
      newJobs: json['new_jobs'] as int?,
      companies: json['companies'] as int?,
      candidates: json['candidates'] as int?,
    );

Map<String, dynamic> _$$StatesImplToJson(_$StatesImpl instance) =>
    <String, dynamic>{
      'live_jobs': instance.liveJobs,
      'new_jobs': instance.newJobs,
      'companies': instance.companies,
      'candidates': instance.candidates,
    };

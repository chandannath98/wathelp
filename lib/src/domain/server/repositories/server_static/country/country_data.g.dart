// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryDataImpl _$$CountryDataImplFromJson(Map<String, dynamic> json) =>
    _$CountryDataImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      sortName: json['sortname'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$CountryDataImplToJson(_$CountryDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sortname': instance.sortName,
      'status': instance.status,
    };

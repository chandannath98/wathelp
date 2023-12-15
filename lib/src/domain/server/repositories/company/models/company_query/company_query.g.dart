// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyQueryImpl _$$CompanyQueryImplFromJson(Map<String, dynamic> json) =>
    _$CompanyQueryImpl(
      query: json['keyword'] as String?,
      location: json['location'] as String?,
      sort: $enumDecodeNullable(_$CompanySearchSortEnumMap, json['sortBy']),
    );

Map<String, dynamic> _$$CompanyQueryImplToJson(_$CompanyQueryImpl instance) =>
    <String, dynamic>{
      'keyword': instance.query,
      'location': instance.location,
      'sortBy': _$CompanySearchSortEnumMap[instance.sort],
    };

const _$CompanySearchSortEnumMap = {
  CompanySearchSort.latest: 'latest',
  CompanySearchSort.oldest: 'oldest',
};

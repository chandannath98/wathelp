// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate_dashboard_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CandidateDashboardDataImpl _$$CandidateDashboardDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CandidateDashboardDataImpl(
      profileComplete: json['profileComplated'] as int?,
      appliedJobs: json['appliedJobs'] as int?,
      favoriteJobs: json['favoriteJobs'] as int?,
      notifications: json['notifications'] as int?,
    );

Map<String, dynamic> _$$CandidateDashboardDataImplToJson(
        _$CandidateDashboardDataImpl instance) =>
    <String, dynamic>{
      'profileComplated': instance.profileComplete,
      'appliedJobs': instance.appliedJobs,
      'favoriteJobs': instance.favoriteJobs,
      'notifications': instance.notifications,
    };

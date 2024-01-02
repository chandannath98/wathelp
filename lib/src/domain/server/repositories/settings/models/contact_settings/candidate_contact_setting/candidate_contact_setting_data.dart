import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidate_contact_setting_data.g.dart';
part 'candidate_contact_setting_data.freezed.dart';

@freezed
class CandidateContactSettingData with _$CandidateContactSettingData {
  const factory CandidateContactSettingData({
    @JsonKey(name: 'contact_info') ContactInfo? contactInfo,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'job_alerts') List<String>? jobAlerts,
    @JsonKey(name: 'job_alert_role_list')
    List<JobAlertRoleList>? jobAlertRoleList,
  }) = _CandidateContactSettingData;

  factory CandidateContactSettingData.fromJson(Map<String, Object?> json) =>
      _$CandidateContactSettingDataFromJson(json);
}

@freezed
class ContactInfo with _$ContactInfo {
  const factory ContactInfo({
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'secondary_phone') String? secondaryPhone,
    @JsonKey(name: 'whatsapp_no') String? whatsappNo,
    @JsonKey(name: 'secondary_email') String? secondaryEmail,
  }) = _ContactInfo;

  factory ContactInfo.fromJson(Map<String, Object?> json) =>
      _$ContactInfoFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'latitude') double? latitude,
    @JsonKey(name: 'longitude') double? longitude,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}

@freezed
class JobAlertRoleList with _$JobAlertRoleList {
  const factory JobAlertRoleList({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _JobAlertRoleList;

  factory JobAlertRoleList.fromJson(Map<String, Object?> json) =>
      _$JobAlertRoleListFromJson(json);
}

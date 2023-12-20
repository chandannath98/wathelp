import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_personal_setting_response.g.dart';
part 'update_personal_setting_response.freezed.dart';

@freezed
class UpdatePersonalSettingResponse with _$UpdatePersonalSettingResponse {
  const factory UpdatePersonalSettingResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') Data? data,
  }) = _UpdatePersonalSettingResponse;

  factory UpdatePersonalSettingResponse.fromJson(Map<String, Object?> json) =>
      _$UpdatePersonalSettingResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'experience_id') String? experienceId,
    @JsonKey(name: 'education_id') String? educationId,
    @JsonKey(name: 'website') String? website,
    @JsonKey(name: 'birth_date') String? birthDate,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

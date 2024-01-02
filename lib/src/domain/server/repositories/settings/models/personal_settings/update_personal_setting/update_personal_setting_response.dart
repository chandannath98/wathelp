import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/personal_settings/personal_settings_response/personal_setting_data.dart';

part 'update_personal_setting_response.g.dart';
part 'update_personal_setting_response.freezed.dart';

@freezed
class UpdatePersonalSettingResponse with _$UpdatePersonalSettingResponse {
  const factory UpdatePersonalSettingResponse({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') PersonalSettingData? data,
  }) = _UpdatePersonalSettingResponse;

  factory UpdatePersonalSettingResponse.fromJson(Map<String, Object?> json) =>
      _$UpdatePersonalSettingResponseFromJson(json);
}

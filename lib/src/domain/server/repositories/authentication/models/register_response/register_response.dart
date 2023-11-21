import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../register_data/register_data.dart';

part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    @JsonKey(name: 'data') RegisterData? data,
    @JsonKey(name: 'message') String? message,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, Object?> json) =>
      _$RegisterResponseFromJson(json);
}

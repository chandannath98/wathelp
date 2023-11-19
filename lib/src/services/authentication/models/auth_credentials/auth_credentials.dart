import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_credentials.freezed.dart';
part 'auth_credentials.g.dart';

@freezed
class AuthCredentials with _$AuthCredentials {
  const factory AuthCredentials({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
  }) = _AuthCredentials;

  factory AuthCredentials.fromJson(Map<String, Object?> json) =>
      _$AuthCredentialsFromJson(json);
}

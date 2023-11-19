import 'dart:convert';

import 'package:jobpilot/src/domain/local_storage/config/hive_config.dart';
import 'package:jobpilot/src/domain/server/repositories/auth/models/user/user.dart';
import 'package:jobpilot/src/services/authentication/models/auth_credentials/auth_credentials.dart';

class AuthStorage {
  final config = HiveConfig();
  static const tokenKey = '#TOKEN_KEY';
  static const loginCredKey = '#CRED_KEY';
  static const profileKey = '#PROFILE_KEY';

  saveUserCred(AuthCredentials data) =>
      config.loginCredBox.put(loginCredKey, json.encode(data.toJson()));

  saveToken(String token) => config.tokenBox.put(tokenKey, token);

  saveProfile(User profile) => config.profileBox.put(
        profileKey,
        json.encode(profile.toJson()),
      );

  AuthCredentials? get currentUserCred {
    final string = config.loginCredBox.get(loginCredKey);
    return string != null
        ? AuthCredentials.fromJson(json.decode(string))
        : null;
  }

  String? get currentToken => config.tokenBox.get(tokenKey);

  User? get currentProfile {
    String? data = config.profileBox.get(profileKey);
    if (data != null) {
      return User.fromJson(json.decode(data));
    }
    return null;
  }

  clearCred() async => await config.loginCredBox.clear();

  clearAuth() async {
    await config.tokenBox.clear();
    await config.profileBox.clear();
  }
}

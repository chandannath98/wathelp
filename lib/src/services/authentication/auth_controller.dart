import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/auth_storage/auth_storage.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/models/user/user.dart';
import 'package:jobpilot/src/features/homepage/controllers/homepage_controller.dart';
import 'package:jobpilot/src/features/homepage/views/homepage.dart';
import 'package:jobpilot/src/services/authentication/models/auth_credentials/auth_credentials.dart';
import 'package:jobpilot/src/services/authentication/models/user_type/user_type.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class AuthController extends GetxController {
  static AuthController get find => Get.find();
  final _authStorage = AuthStorage();

  User? _currentUser;
  String? _currentToken;
  UserType? _currentUserType;
  AuthCredentials? _userCredentials;

  User? get currentUser => _currentUser;
  String? get currentToken => _currentToken;
  UserType? get currentUserType => _currentUserType;
  AuthCredentials? get userCredentials => _userCredentials;

  bool get isAuthenticated => _currentUser != null && _currentToken != null;

  @override
  onInit() {
    super.onInit();
    initializeAuthSystem();
  }

  removeAuthCredentials() async {
    _userCredentials = null;
    await _authStorage.clearCred();
    update();
  }

  initializeAuthSystem() {
    log("CurrentToken: ${_authStorage.currentToken}");
    _currentToken = _authStorage.currentToken;
    _currentUser = _authStorage.currentProfile;
    _userCredentials = _authStorage.currentUserCred;
    _currentUserType = _authStorage.currentProfile?.role;
    update();
  }

  handleNewUser(User user) async {
    _currentUser = user;
    _currentUserType = user.role;
    await _authStorage.saveProfile(user);
    update();
  }

  handleNewAuthToken(String token) async {
    _currentToken = token;
    log(token);
    await _authStorage.saveToken(token);
    update();
  }

  saveAuthCredentials(AuthCredentials credentials) async {
    _userCredentials = credentials;
    await _authStorage.saveUserCred(credentials);
    update();
  }

  logOut() async {
    _currentToken = null;
    _currentUser = null;
    await _authStorage.clearAuth();
    showToastSuccess("Logged out successfully!");
    update();
  }

  handleTokenError({String? message}) async {
    await logOut();
    Get.until((route) => route.isFirst);
    HomepageController.find.onLoginClick();
    showToastError(message ?? "Login expired! Please login again.");
  }
}

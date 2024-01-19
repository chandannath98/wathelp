import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/auth_storage/auth_storage.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/auth_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/models/user/user.dart';
import 'package:jobpilot/src/features/homepage/controllers/homepage_controller.dart';
import 'package:jobpilot/src/services/authentication/models/auth_credentials/auth_credentials.dart';
import 'package:jobpilot/src/services/authentication/models/user_type/user_type.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class AuthController extends GetxController {
  static AuthController get find => Get.find();
  final _authStorage = AuthStorage();
  final _authRepo = AuthRepository();

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
    log("CurrentToken: ${AuthStorage.currentToken}");
    _currentToken = AuthStorage.currentToken;
    _currentUser = _authStorage.currentProfile;
    _userCredentials = _authStorage.currentUserCred;
    _currentUserType = _authStorage.currentProfile?.role;
    // if (isAuthenticated) getAndSetCurrentProfileData();
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

  getAndSetCurrentProfileData() async {
    try {
      final res = await _authRepo.getCurrentUserProfile();
      if (res.isSuccess) {
        log("Profile : ${res.data!.user!.toJson()}");
        handleNewUser(res.data!.user!);
        handleNewAuthToken(res.data!.token!);
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#FetchProfileError", error: e, stackTrace: s);
      if (e is RequestException) e.handleError();
    }
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

  handleTokenError({String? message, bool showToast = true}) async {
    await logOut();
    Get.until((route) => route.isFirst);
    HomepageController.find.onLoginClick();
    if (showToast) {
      showToastError(message ?? "Login expired! Please login again.");
    }
  }
}

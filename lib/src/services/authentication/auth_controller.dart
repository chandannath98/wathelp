import 'package:get/get.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/auth_storage/auth_storage.dart';
import 'package:jobpilot/src/domain/server/repositories/auth/models/user/user.dart';
import 'package:jobpilot/src/services/authentication/models/auth_credentials/auth_credentials.dart';

class AuthController extends GetxController {
  static AuthController get find => Get.find();
  final _authStorage = AuthStorage();

  User? _currentUser;
  String? _currentToken;
  AuthCredentials? _userCredentials;

  User? get currentUser => _currentUser;
  String? get currentToken => _currentToken;
  AuthCredentials? get userCredentials => _userCredentials;

  bool get isAuthenticated => _currentUser != null && _currentToken != null;

  removeAuthCredentials() async {
    _userCredentials = null;
    await _authStorage.clearCred();
    update();
  }

  initializeAuthSystem() async {
    _currentToken = _authStorage.currentToken;
    _currentUser = _authStorage.currentProfile;
    _userCredentials = _authStorage.currentUserCred;
    update();
  }

  handleNewUser(User user) async {
    _currentUser = user;
    await _authStorage.saveProfile(user);
    update();
  }

  handleNewAuthToken(String token) async {
    _currentToken = token;
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
    update();
  }
}

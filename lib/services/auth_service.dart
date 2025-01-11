import 'package:flutter/foundation.dart';

class AuthService extends ChangeNotifier {
  bool _isAuthenticated = false;
  String? _currentUser;

  bool get isAuthenticated => _isAuthenticated;
  String? get currentUser => _currentUser;

  Future<bool> signIn(String email, String password) async {
    // Имитация проверки
    if (email.isNotEmpty && password.isNotEmpty) {
      _isAuthenticated = true;
      _currentUser = email;
      notifyListeners();
      return true;
    }
    return false;
  }

  Future<bool> signUp(String email, String password) async {
    // Имитация регистрации
    if (email.isNotEmpty && password.isNotEmpty) {
      _isAuthenticated = true;
      _currentUser = email;
      notifyListeners();
      return true;
    }
    return false;
  }

  void signOut() {
    _isAuthenticated = false;
    _currentUser = null;
    notifyListeners();
  }
}

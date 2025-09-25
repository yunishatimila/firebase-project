import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/core/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  StatusUtils _statusUtils = StatusUtils.idle;
  StatusUtils get statusUtils => _statusUtils;
  String? errorMessage;
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  AuthProvider() {
    Future.microtask(() {
      checkLogInState();
    });
  }

  Future<void> checkLogInState() async {
    final prefs = await SharedPreferences.getInstance();
    _isLoggedIn = prefs.getBool("isLoggedIn") ?? false;
    notifyListeners();
  }

  Future<void> signup(String email, String password) async {
    _statusUtils = StatusUtils.loading;
    notifyListeners();
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      _statusUtils = StatusUtils.success;
      notifyListeners();
    } catch (e) {
      errorMessage = e.toString();
      _statusUtils = StatusUtils.error;
      notifyListeners();
    }
  }

  Future<void> login(String email, String password) async {
    _statusUtils = StatusUtils.loading;
    notifyListeners();
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool("isLoggedIn", true);
      _isLoggedIn = true;
      _statusUtils = StatusUtils.success;
      notifyListeners();
    } catch (e) {
      errorMessage = e.toString();
      _statusUtils = StatusUtils.error;
      notifyListeners();
    }
  }

  Future<void> logOut() async {
    _auth.signOut();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove("isLoggedIn");
    await prefs.setBool("isLoggedIn", false);
    _statusUtils = StatusUtils.idle;
    _isLoggedIn = false;
    notifyListeners();
  }
}

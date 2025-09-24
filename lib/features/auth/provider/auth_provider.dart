import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/core/utils.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  StatusUtils _statusUtils = StatusUtils.idle;
  StatusUtils get statusUtils => _statusUtils;
  String? errorMessage;

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
      _statusUtils = StatusUtils.success;
      print("Success");
      notifyListeners();
    } catch (e) {
      errorMessage = e.toString();
      _statusUtils = StatusUtils.error;
      print("e.tostring");
      notifyListeners();
    }
  }
}

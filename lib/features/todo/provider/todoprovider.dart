import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/core/utils.dart';

class Todoprovider with ChangeNotifier {
  final _firebaseStore = FirebaseFirestore.instance;

  StatusUtils _statusUtils = StatusUtils.idle;

  StatusUtils get statusUtils => _statusUtils;

  String? errorMessage;

  Future<void> addTodo(String id, String title, String content) async {
    _statusUtils = StatusUtils.loading;
    notifyListeners();
    try {
      final data = {"id": id, "title": title, "content": content};
      await _firebaseStore.collection("Todo").add(data);
      _statusUtils = StatusUtils.success;
      notifyListeners();
    } catch (e) {
      errorMessage = e.toString();
      _statusUtils = StatusUtils.error;
      notifyListeners();
    }
  }
}

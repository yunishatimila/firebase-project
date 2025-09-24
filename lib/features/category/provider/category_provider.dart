import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/core/utils.dart';

class CategoryProvider with ChangeNotifier {
  final _firebaseStore = FirebaseFirestore.instance;
  StatusUtils _statusUtils = StatusUtils.idle;

  StatusUtils get statusUtils => _statusUtils;

  String? errorMessage;

  Future<void> category(
      String category,
      String rating,
      String title,
      String classes,
      String durationhours,
      String price,
      String tab,
      String complains) async {
    _statusUtils = StatusUtils.loading;
    notifyListeners();
    try {
      final data = {
        "category": category,
        "rating": rating,
        "title": title,
        "classes": classes,
        "durationhours": durationhours,
        "price": price,
        "tab": tab,
        "complains": complains,
      };
      await _firebaseStore.collection("Categories").add(data);
      _statusUtils = StatusUtils.success;
      notifyListeners();

      // await
    } catch (e) {
      errorMessage = e.toString();
      _statusUtils = StatusUtils.error;
    }
  }
}

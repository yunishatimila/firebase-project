import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/category/pages/mentor.dart';
import 'package:flutter_application_3/features/core/utils.dart';
import 'package:flutter_application_3/features/category/pages/course.dart';

class CategoryProvider with ChangeNotifier {
  final _firebaseStore = FirebaseFirestore.instance;
  StatusUtils _statusUtils = StatusUtils.idle;

  StatusUtils get statusUtils => _statusUtils;

  String? errorMessage;

  List<Map<String, dynamic>> _categoriesList = [];
  List<Map<String, dynamic>> _mentorsList = [];

  List<Map<String, dynamic>> get categoriesList => _categoriesList;
  List<Map<String, dynamic>> get mentorsList => _mentorsList;

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
    } catch (e) {
      errorMessage = e.toString();
      _statusUtils = StatusUtils.error;
      notifyListeners();
    }
  }

  Future<void> addMentor(Mentors mentor) async {
    handleLoading();

    try {
      await _firebaseStore.collection("Mentors").add(mentor.toJson());
      handleSuccess();
    } catch (e) {
      handleError();
    }
  }

  Future<void> fetchMentors() async {
    handleLoading();
    try {
      final snapshot = await _firebaseStore.collection("Mentors").get();
      _mentorsList = snapshot.docs
          .map((mentors) => {"id": mentors.id, ...mentors.data()})
          .toList();
      handleSuccess();
    } catch (e) {
      handleError();
    }
  }

  Future<void> fetchCourses() async {
    handleLoading();
    try {
      final snapshot = await _firebaseStore.collection("Categories").get();
      _categoriesList = snapshot.docs
          .map((category) => {"id": category.id, ...category.data()})
          .toList();
      _statusUtils = StatusUtils.success;
      notifyListeners();
    } catch (e) {
      errorMessage = e.toString();
      _statusUtils = StatusUtils.error;
      notifyListeners();
    }
  }

  handleLoading() {
    _statusUtils = StatusUtils.loading;
    notifyListeners();
  }

  handleSuccess() {
    _statusUtils = StatusUtils.success;
    notifyListeners();
  }

  handleError() {
    _statusUtils = StatusUtils.error;
    notifyListeners();
  }
}

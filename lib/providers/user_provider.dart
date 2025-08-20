import 'package:flutter/material.dart';
import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(name: "AB");

  User get user => _user;

  void setName(String name) {
    _user.name = name;
    notifyListeners();
  }

  void setTargetWeight(double weight) {
    _user.targetWeight = weight;
    notifyListeners();
  }
}

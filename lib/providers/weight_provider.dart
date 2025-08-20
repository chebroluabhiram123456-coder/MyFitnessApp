import 'package:flutter/material.dart';
import '../models/weight.dart';

class WeightProvider extends ChangeNotifier {
  List<WeightEntry> _entries = [];

  List<WeightEntry> get entries => _entries;

  void addEntry(WeightEntry entry) {
    _entries.add(entry);
    notifyListeners();
  }
}

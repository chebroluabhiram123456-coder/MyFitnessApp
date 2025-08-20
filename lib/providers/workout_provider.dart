import 'package:flutter/material.dart';
import '../models/workout.dart';

class WorkoutProvider extends ChangeNotifier {
  List<Workout> _workouts = [];

  List<Workout> get workouts => _workouts;

  void addWorkout(Workout workout) {
    _workouts.add(workout);
    notifyListeners();
  }

  List<Workout> getWorkoutsForDay(String day) {
    return _workouts.where((w) => w.day == day).toList();
  }
}

class Workout {
  String id;
  String name;
  String muscleGroup;
  List<Exercise> exercises;
  String imagePath; // Local or network image path
  String day; // e.g. "Monday"

  Workout({
    required this.id,
    required this.name,
    required this.muscleGroup,
    required this.exercises,
    required this.imagePath,
    required this.day,
  });
}

class Exercise {
  String name;
  int sets;
  int reps;
  String imagePath;
  String muscleGroup;

  Exercise({
    required this.name,
    required this.sets,
    required this.reps,
    required this.imagePath,
    required this.muscleGroup,
  });
}

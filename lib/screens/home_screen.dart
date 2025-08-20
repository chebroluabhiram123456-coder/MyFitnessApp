import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../providers/workout_provider.dart';
import '../widgets/date_carousel.dart';
import '../widgets/workout_card.dart';
import '../widgets/weight_tracker.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final workoutProvider = Provider.of<WorkoutProvider>(context);
    String today = DateTime.now().weekday.toString(); // You can map to weekday names

    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          DateCarousel(),
          SizedBox(height: 24),
          Row(
            children: [
              Text(
                "Get Ready, ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              GestureDetector(
                onTap: () {
                  // Show dialog to edit name
                },
                child: Text(
                  userProvider.user.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.deepPurple),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text("Let's smash today's workout!", style: TextStyle(fontSize: 18)),
          SizedBox(height: 24),
          WorkoutCard(), // Custom widget displaying today's workout
          SizedBox(height: 16),
          WeightTracker(), // Widget for weight logging/tracking
          SizedBox(height: 16),
          ElevatedButton.icon(
            icon: Icon(Icons.add),
            label: Text("Create Custom Workout"),
            onPressed: () {
              Navigator.pushNamed(context, "/create-workout");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}

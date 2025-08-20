import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example static workout; you should fetch today's workout from provider
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/workout-detail");
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(24),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("60 min", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            Text("Chest, Shoulders, Core", style: TextStyle(fontSize: 18, color: Colors.white70)),
            SizedBox(height: 12),
            Row(
              children: [
                ...List.generate(
                  3,
                  (idx) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/workout${idx + 1}.jpg',
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Icon(Icons.arrow_forward, color: Colors.deepPurple),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DateCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example static data; you can make this dynamic
    final days = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"];
    final dates = [10, 11, 12, 13, 14, 15, 16];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(days.length, (idx) {
        return Column(
          children: [
            Text(days[idx], style: TextStyle(color: Colors.white70)),
            Container(
              margin: EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                color: idx == DateTime.now().weekday % 7 ? Colors.white24 : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Text(
                dates[idx].toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: idx == DateTime.now().weekday % 7 ? FontWeight.bold : FontWeight.normal,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

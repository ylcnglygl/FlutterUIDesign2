import 'package:flutter/material.dart';

Card dailyNewsCard() {
  return Card(
    elevation: 4,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Daily News",
            style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.notifications),
        )
      ],
    ),
  );
}

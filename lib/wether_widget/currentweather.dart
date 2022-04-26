import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.amber,
          size: 80,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$temp",
            style: TextStyle(fontSize: 45, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$location",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Additional Information",
          style: TextStyle(
              fontSize: 24,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

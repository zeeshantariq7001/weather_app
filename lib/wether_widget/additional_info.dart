// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';

Widget additionalInfo(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wind",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("$wind")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "humidity",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("$humidity")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "pressure",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("$pressure")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "feels_like",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("$feels_like")
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

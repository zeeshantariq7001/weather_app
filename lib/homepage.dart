// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_api_client.dart';
import 'package:weather_app/weather_model/model.dart';
import 'package:weather_app/wether_widget/additional_info.dart';
import 'package:weather_app/wether_widget/currentweather.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  weatherApiClient client = weatherApiClient();
  weatherModel? data;
  Future<void> getData() async {
    data = await client.getCurrentWeather("Sahiwal");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await getData();
              },
              icon: Icon(
                Icons.refresh,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.transparent,
        title: Text(
          "Weather",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        elevation: 0.0,
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                currentWeather(Icons.wb_sunny_outlined, "${data!.temp} C",
                    "${data!.cityName}"),
                SizedBox(
                  height: 20,
                ),
                Text("Additional Information"),
                additionalInfo("${data!.wind}", "${data!.humidity}",
                    "${data!.pressure}", "${data!.feels_like}")
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return Container();
        },
        future: getData(),
      ),
    );
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/weather_model/model.dart';

class weatherApiClient {
  Future<weatherModel>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=c56ae750e090b762126c0356170d1eef&units=metric");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(weatherModel.fromJson(body).cityName);
    return weatherModel.fromJson(body);
  }
}

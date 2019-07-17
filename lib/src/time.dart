import 'package:flutter/material.dart';

import 'package:weather_icons/weather_icons.dart';

class Time {
  static IconData fromHour(int hour) {
    final index = hour - 1;
    if (hour <= 1 || hour > 12) {
      throw UnsupportedError('Unsupported hour $hour');
    }

    return all[index];
  }

  static Icon iconFromHour(int hour) => Icon(fromHour(hour));

  static IconData fromDate(DateTime dateTime) => fromHour(dateTime.hour);

  static Icon iconFromDate(DateTime dateTime) => iconFromHour(dateTime.hour);

  static const List<IconData> all = [
    WeatherIcons.time_1,
    WeatherIcons.time_2,
    WeatherIcons.time_3,
    WeatherIcons.time_4,
    WeatherIcons.time_5,
    WeatherIcons.time_6,
    WeatherIcons.time_7,
    WeatherIcons.time_8,
    WeatherIcons.time_9,
    WeatherIcons.time_10,
    WeatherIcons.time_11,
    WeatherIcons.time_12,
  ];
}

import 'package:flutter/material.dart';

import 'package:weather_icons/weather_icons.dart';

/// Collection of helper functions for getting a time icon.
///
/// See [erikflowers/WeatherIcons](https://erikflowers.github.io/weather-icons/).
class TimeIcon {
  /// Get a 'time' [IconData] at a specific [hour].
  ///
  /// If [hour] is not within 1-12 then a [UnsupportedError] will be thrown.
  static IconData fromHour(int hour) {
    final index = hour - 1;
    if (hour < 1 || hour > 12) {
      throw UnsupportedError('Unsupported hour $hour');
    }

    return all[index];
  }

  /// Create a 'time' [Icon] at a specific integer [hour].
  static Icon iconFromHour(int hour) => Icon(fromHour(hour));

  /// Get the 'time' [IconData] at a specific time using the [dateTime].
  static IconData fromDate(DateTime dateTime) => fromHour(dateTime.hour);

  /// Create a 'time' [Icon] at a specific time using the [dateTime].
  static Icon iconFromDate(DateTime dateTime) => iconFromHour(dateTime.hour);

  /// A list of all of the 'time' [WeatherIcons].
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

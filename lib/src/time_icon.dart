import 'package:flutter/material.dart';

import 'package:weather_icons/weather_icons.dart';

/// Collection of helper functions for getting a time icon.
///
/// See [erikflowers/WeatherIcons](https://erikflowers.github.io/weather-icons/).
class TimeIcon {
  /// Get a 'time' [IconData] at a specific [hour].
  ///
  /// If [hour] is midnight (0) then it will return [WeatherICons.time_12].
  ///
  /// If [hour] is not within 0-24 then a [UnsupportedError] will be thrown.
  static IconData fromHour(int hour) {
    if (hour < 0 || hour > 24) {
      throw UnsupportedError('Unsupported hour $hour');
    }

    if (hour == 0) {
      return WeatherIcons.time_12;
    }

    final convertedHour = hour > 12 ? hour - 12 : hour;
    return all[convertedHour - 1];
  }

  /// Get the 'time' [IconData] at a specific time using the [dateTime].
  static IconData fromDate(DateTime dateTime) => fromHour(dateTime.hour);

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

import 'package:flutter_test/flutter_test.dart';

import 'package:weather_icons/weather_icons.dart';

void main() {
  final date = DateTime.parse("2000-01-01 03:00:00 Z");

  test('should return the correct icon data from hour int', () {
    expect(TimeIcon.fromHour(5), WeatherIcons.time_5);
  });

  test('should return the correct icon from hour int', () {
    expect(TimeIcon.iconFromHour(5).icon, WeatherIcons.time_5);
  });

  test('should return the correct icon data from date', () {
    expect(TimeIcon.fromDate(date), WeatherIcons.time_3);
  });

  test('should return the correct icon from date', () {
    expect(TimeIcon.iconFromDate(date).icon, WeatherIcons.time_3);
  });

  test('should return the correct icon from date at midnight', () {
    final date2 = DateTime.parse("2000-01-01 00:00:00 Z");
    expect(TimeIcon.iconFromDate(date2).icon, WeatherIcons.time_12);
  });

  test('should return the correct icon from date past 12 pm', () {
    final date2 = DateTime.parse("2000-01-01 15:00:00 Z");
    expect(TimeIcon.iconFromDate(date2).icon, WeatherIcons.time_3);
  });

  test('should throw if given a negative hour', () {
    expect(() => TimeIcon.fromHour(-42), throwsUnsupportedError);
    expect(() => TimeIcon.fromHour(1), returnsNormally);
  });

  test('should throw if given a hour greater than 24', () {
    expect(() => TimeIcon.fromHour(24), returnsNormally);
    expect(() => TimeIcon.fromHour(25), throwsUnsupportedError);
  });
}

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

  test('should throw if given a negative hour', () {
    expect(() => TimeIcon.fromHour(-42), throwsUnsupportedError);
    expect(() => TimeIcon.fromHour(0), throwsUnsupportedError);
    expect(() => TimeIcon.fromHour(1), returnsNormally);
  });

  test('should throw if given a hour greater than 12', () {
    expect(() => TimeIcon.fromHour(12), returnsNormally);
    expect(() => TimeIcon.fromHour(13), throwsUnsupportedError);
  });
}

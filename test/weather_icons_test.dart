import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:weather_icons/weather_icons.dart';
import 'package:weather_icons/src/util/rotate.dart';

import 'util/test_widget.dart';

void main() {
  testWidgets('can create Icon using WeatherIcon data', (t) async {
    await t.pumpWidget(TestWidget(child: Icon(WeatherIcons.cloud)));
    expect(find.byIcon(WeatherIcons.cloud), findsOneWidget);
  });

  test('get correct icon from name', () {
    expect(WeatherIcons.fromString('wi-day-sunny'), WeatherIcons.day_sunny);
  });

  test('return default if no icon matched', () {
    expect(
      WeatherIcons.fromString('not-found', fallback: WeatherIcons.na),
      WeatherIcons.na,
    );
  });

  test('throw if unsupported icon with no fallback', () {
    expect(() => WeatherIcons.fromString('not-found'), throwsUnsupportedError);
  });

  testWidgets('create a rotated child', (t) async {
    final child = TestWidget(child: Icon(WeatherIcons.cloud));
    final rotated = Rotate(
      child: child,
      degree: 100,
    );
    await t.pumpWidget(rotated);

    expect(find.byWidget(child), findsOneWidget);
  });

  test('should throw on null constructor params', () {
    expect(
      () => Rotate(degree: null, child: Placeholder()),
      throwsAssertionError,
    );
    expect(() => Rotate(degree: 42, child: null), throwsAssertionError);
  });
}

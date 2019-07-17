import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_icons/weather_icons.dart';

import 'util/test_widget.dart';

void main() {
  testWidgets('can create Icon using WeatherIcon data', (t) async {
    await t.pumpWidget(TestWidget(child: Icon(WeatherIcons.cloud)));
    expect(find.byIcon(WeatherIcons.cloud), findsOneWidget);
  });

  test('get correct icon from name', () {
    expect(WeatherIcons.fromName('wi-day-sunny'), WeatherIcons.day_sunny);
  });

  // TODO: Figure out why this test is broken
  // test('return default if no icon matched', () {
  //   expect(
  //     WeatherIcons.fromName('not-found', fallback: WeatherIcons.na),
  //     WeatherIcons.na,
  //   );
  // });

  test('throw if unsupported icon with no fallback', () {
    expect(() => WeatherIcons.fromName('not-found'), throwsUnsupportedError);
  });
}

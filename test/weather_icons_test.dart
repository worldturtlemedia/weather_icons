import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_icons/weather_icons.dart';

import 'util/test_widget.dart';

void main() {
  testWidgets('can create Icon using WeatherIcon data', (t) async {
    await t.pumpWidget(TestWidget(child: Icon(WeatherIcons.cloud)));
    expect(find.byIcon(WeatherIcons.cloud), findsOneWidget);
  });
}

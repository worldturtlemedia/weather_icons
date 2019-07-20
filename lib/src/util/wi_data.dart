import 'package:flutter/material.dart';

class WIData extends IconData {
  static const String FONT_FAMILY = 'WeatherIcons';
  static const String FONT_PACKAGE = 'weather_icons';

  const WIData(int value)
      : super(
          value,
          fontFamily: FONT_FAMILY,
          fontPackage: FONT_PACKAGE,
        );
}

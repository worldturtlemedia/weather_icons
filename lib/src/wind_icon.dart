import 'package:flutter/material.dart';

import 'package:weather_icons/src/util/rotate.dart';
import 'package:weather_icons/src/weather_icons_g.dart';

class WindIcon extends Icon {
  final double angle;

  const WindIcon({
    @required this.angle,
  })  : assert(angle != null),
        super(WeatherIcons.wind);

  @override
  Widget build(BuildContext context) {
    return Rotate(
      angle: angle,
      child: super.build(context),
    );
  }

  static const towards_n = WindIcon(angle: 0);
  static const towards_nne = WindIcon(angle: 22.5);
  static const towards_ne = WindIcon(angle: 45);
  static const towards_ene = WindIcon(angle: 67.5);
  static const towards_e = WindIcon(angle: 90);
  static const towards_ese = WindIcon(angle: 112.5);
  static const towards_se = WindIcon(angle: 135);
  static const towards_sse = WindIcon(angle: 157.5);
  static const towards_s = WindIcon(angle: 180);
  static const towards_ssw = WindIcon(angle: 202.5);
  static const towards_sw = WindIcon(angle: 225);
  static const towards_wsw = WindIcon(angle: 247.5);
  static const towards_w = WindIcon(angle: 270);
  static const towards_wnw = WindIcon(angle: 292.5);
  static const towards_nw = WindIcon(angle: 315);
  static const towards_nnw = WindIcon(angle: 337.5);

  static const from_n = WindIcon(angle: 360);
  static const from_nne = WindIcon(angle: 337.5);
  static const from_ne = WindIcon(angle: 315);
  static const from_ene = WindIcon(angle: 292.5);
  static const from_e = WindIcon(angle: 270);
  static const from_ese = WindIcon(angle: 247.5);
  static const from_se = WindIcon(angle: 225);
  static const from_sse = WindIcon(angle: 202.5);
  static const from_s = WindIcon(angle: 180);
  static const from_ssw = WindIcon(angle: 157.5);
  static const from_sw = WindIcon(angle: 135);
  static const from_wsw = WindIcon(angle: 112.5);
  static const from_w = WindIcon(angle: 90);
  static const from_wnw = WindIcon(angle: 67.5);
  static const from_nw = WindIcon(angle: 45);
  static const from_nnw = WindIcon(angle: 22.5);
}

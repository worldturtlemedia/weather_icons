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
}

import 'package:flutter/material.dart';

import 'package:weather_icons/src/util/rotate.dart';
import 'package:weather_icons/src/weather_icons_g.dart';

/// Create a rotated 'wind' [Icon] using an [angle] between 0-360.
///
/// Use the static presets, or instantiate [WindIcon] with an [angle].
///
/// Example:
///
///     // Using custom angle between 0-360
///     IconButton(
///       icon: WindIcon(angle: 45),
///       onPressed: () { }
///     );
///
///     // Using a preset angle
///     IconButton(
///       icon: WindIcon.towards_ne,
///       onPressed: () { }
///     );
class WindIcon extends Icon {
  final double angle;

  const WindIcon({
    @required this.angle,
  })  : assert(angle != null),
        assert(angle >= 0 && angle <= 360),
        super(WeatherIcons.wind);

  @override
  Widget build(BuildContext context) {
    return Rotate(
      angle: angle,
      child: super.build(context),
    );
  }

  // Towards

  /// [WindIcon] for pointing towards  **North**.
  static const towards_n = WindIcon(angle: 0);

  /// [WindIcon] for pointing towards  **North by North-East**.
  static const towards_nne = WindIcon(angle: 22.5);

  /// [WindIcon] for pointing towards  **North-East**.
  static const towards_ne = WindIcon(angle: 45);

  /// [WindIcon] for pointing towards  **East by North-East**.
  static const towards_ene = WindIcon(angle: 67.5);

  /// [WindIcon] for pointing towards  **East**.
  static const towards_e = WindIcon(angle: 90);

  /// [WindIcon] for pointing towards  **Easy by South-East**.
  static const towards_ese = WindIcon(angle: 112.5);

  /// [WindIcon] for pointing towards  **South-East**.
  static const towards_se = WindIcon(angle: 135);

  /// [WindIcon] for pointing towards  **South by South-East**.
  static const towards_sse = WindIcon(angle: 157.5);

  /// [WindIcon] for pointing towards  **South**.
  static const towards_s = WindIcon(angle: 180);

  /// [WindIcon] for pointing towards  **South by South-West**.
  static const towards_ssw = WindIcon(angle: 202.5);

  /// [WindIcon] for pointing towards  **South-West**.
  static const towards_sw = WindIcon(angle: 225);

  /// [WindIcon] for pointing towards  **West by South-West**.
  static const towards_wsw = WindIcon(angle: 247.5);

  /// [WindIcon] for pointing towards  **West**.
  static const towards_w = WindIcon(angle: 270);

  /// [WindIcon] for pointing towards  **West by North-West**.
  static const towards_wnw = WindIcon(angle: 292.5);

  /// [WindIcon] for pointing towards  **North-West**.
  static const towards_nw = WindIcon(angle: 315);

  /// [WindIcon] for pointing towards  **North by North-West**.
  static const towards_nnw = WindIcon(angle: 337.5);

  // From

  /// [WindIcon] for pointing from  **North**.
  static const from_n = WindIcon(angle: 360);

  /// [WindIcon] for pointing from  **North by North-East**.
  static const from_nne = WindIcon(angle: 337.5);

  /// [WindIcon] for pointing from  **North-East**.
  static const from_ne = WindIcon(angle: 315);

  /// [WindIcon] for pointing from  **East by North-East**.
  static const from_ene = WindIcon(angle: 292.5);

  /// [WindIcon] for pointing from  **East**.
  static const from_e = WindIcon(angle: 270);

  /// [WindIcon] for pointing from  **East by South-East**.
  static const from_ese = WindIcon(angle: 247.5);

  /// [WindIcon] for pointing from  **South-East**.
  static const from_se = WindIcon(angle: 225);

  /// [WindIcon] for pointing from  **South by South-East**.
  static const from_sse = WindIcon(angle: 202.5);

  /// [WindIcon] for pointing from  **South**.
  static const from_s = WindIcon(angle: 180);

  /// [WindIcon] for pointing from  **South by South-West**.
  static const from_ssw = WindIcon(angle: 157.5);

  /// [WindIcon] for pointing from  **South-West**.
  static const from_sw = WindIcon(angle: 135);

  /// [WindIcon] for pointing from  **West by South-West**.
  static const from_wsw = WindIcon(angle: 112.5);

  /// [WindIcon] for pointing from  **West**.
  static const from_w = WindIcon(angle: 90);

  /// [WindIcon] for pointing from  **West by North-West**.
  static const from_wnw = WindIcon(angle: 67.5);

  /// [WindIcon] for pointing from  **North-West**.
  static const from_nw = WindIcon(angle: 45);

  /// [WindIcon] for pointing from  **North by North-West**.
  static const from_nnw = WindIcon(angle: 22.5);
}

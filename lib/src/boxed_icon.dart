import 'package:flutter/material.dart';

/// Create a consistent [Icon] for [WeatherIcons].
///
/// The icons in the Weather Icons font are not perfectly centered or square,
/// so when you create an [Icon] using one of the [WeatherIcons] the
/// actual icon can be drawn **outside** the boundaries of the container
/// it is in.  Which can lead to unintended layout bugs.
///
/// This widget works by basically copying the build function from [Icon], but
/// tweaking the [SizedBox] so that it will comfortably fit all of the [WeatherIcons].
///
/// You can use it just like you would use any [Icon]:
///
///     IconButton(
///       icon: BoxedIcon(WeatherIcons.day_cloudy_gusts),
///       onPressed: () {},
///     );
class BoxedIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;

  const BoxedIcon(
    this.icon, {
    Key key,
    this.size,
    this.color,
  })  : assert(icon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final IconThemeData iconTheme = IconTheme.of(context);

    final double iconSize = size ?? iconTheme.size;

    final double iconOpacity = iconTheme.opacity;
    Color iconColor = color ?? iconTheme.color;
    if (iconOpacity != 1.0)
      iconColor = iconColor.withOpacity(iconColor.opacity * iconOpacity);

    return SizedBox(
      width: iconSize * 1.5,
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          text: TextSpan(
            text: String.fromCharCode(icon.codePoint),
            style: TextStyle(
              inherit: false,
              color: iconColor,
              fontSize: iconSize,
              fontFamily: "WeatherIcons",
              package: "weather_icons",
            ),
          ),
        ),
      ),
    );
  }
}

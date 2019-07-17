import 'dart:math';

import 'package:flutter/material.dart';

/// Rotates the [child] by the [angle] degrees.
class Rotate extends StatelessWidget {
  final double angle;
  final Widget child;

  const Rotate({
    Key key,
    @required this.angle,
    @required this.child,
  })  : assert(angle != null),
        assert(child != null),
        super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / angle,
      child: child,
    );
  }
}

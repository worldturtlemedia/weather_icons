import 'dart:math';

import 'package:flutter/material.dart';

/// Rotates the [child] by the [degree] degrees.
class Rotate extends StatelessWidget {
  final num degree;
  final Widget child;
  final Alignment alignment;

  const Rotate({
    Key? key,
    required this.degree,
    required this.child,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: degree * pi / 180,
      alignment: alignment,
      child: child,
    );
  }
}

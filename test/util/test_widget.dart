import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  final Widget child;

  const TestWidget({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing',
      home: Center(
        child: child,
      ),
    );
  }
}

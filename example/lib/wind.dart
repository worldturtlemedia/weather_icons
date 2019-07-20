import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class WindScreen extends StatefulWidget {
  @override
  _WindScreenState createState() => _WindScreenState();
}

class _WindScreenState extends State<WindScreen> {
  double _degree = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wind Icons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Press the buttons to change wind Direction",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 48),
              child: Container(
                color: Colors.amber,
                child: WindIcon(
                  degree: _degree,
                  size: 100,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("-20"),
                  onPressed: () {
                    _updateHour(_degree - 20);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    "$_degree°",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                RaisedButton(
                  child: Text("+20"),
                  onPressed: () {
                    _updateHour(_degree + 20);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _updateHour(double degree) {
    if (degree > 360)
      degree = 0;
    else if (degree < 0) degree = 360;

    setState(() => _degree = degree);
  }
}

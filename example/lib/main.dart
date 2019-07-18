import 'package:flutter/material.dart';

import 'all.dart';
import 'dynamic.dart';
import 'time.dart';
import 'wind.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'weather_icons Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        "all": (context) => AllScreen(),
        "dynamic": (context) => DynamicScreen(),
        "time": (context) => TimeScreen(),
        "wind": (context) => WindScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("weather_icons Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("All icons"),
              onPressed: () => _navigate(context, "all"),
            ),
            RaisedButton(
              child: Text("Dynamic icon"),
              onPressed: () => _navigate(context, "dynamic"),
            ),
            RaisedButton(
              child: Text("Time icons"),
              onPressed: () => _navigate(context, "time"),
            ),
            RaisedButton(
              child: Text("Wind icons"),
              onPressed: () => _navigate(context, "wind"),
            ),
          ],
        ),
      ),
    );
  }

  _navigate(BuildContext context, String dest) {
    Navigator.pushNamed(context, dest);
  }
}

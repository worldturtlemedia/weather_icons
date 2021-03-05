import 'package:flutter/material.dart';

import 'package:weather_icons/weather_icons.dart';
import 'package:weather_icons_example/util.dart';

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
        "all-boxed": (context) => AllScreen(isBoxed: true),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Click both of the 'All Icons' buttons to see the difference between using BoxedIcon vs Icon",
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              child: Text("All icons (Regular Icon())"),
              onPressed: () => _navigate(context, "all"),
            ),
            ElevatedButton(
              child: Text("All icons (BoxedIcon())"),
              onPressed: () => _navigate(context, "all-boxed"),
            ),
            ElevatedButton(
              child: Text("Dynamic icon"),
              onPressed: () => _navigate(context, "dynamic"),
            ),
            ElevatedButton(
              child: Text("Time icons"),
              onPressed: () => _navigate(context, "time"),
            ),
            ElevatedButton(
              child: Text("Wind icons"),
              onPressed: () => _navigate(context, "wind"),
            ),
            IconButton(
              icon: BoxedIcon(WeatherIcons.day_cloudy_gusts),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                "Fonts generated at: ${DateTime.fromMillisecondsSinceEpoch(WeatherIconsUtil.dateTimestamp)}",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  _navigate(BuildContext context, String dest) {
    Navigator.pushNamed(context, dest);
  }
}

import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

import 'util.dart';

class DynamicScreen extends StatefulWidget {
  @override
  _DynamicScreenState createState() => _DynamicScreenState();
}

class _DynamicScreenState extends State<DynamicScreen> {
  String _searchTerm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic Icons"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                onChanged: (v) {
                  if (v.length > 2) {
                    setState(() {
                      _searchTerm = v;
                    });
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Enter a CSS class name (try: wi-fire)',
                ),
              ),
            ),
            Container(
              child: Center(
                child: _buildResult(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResult(BuildContext context) {
    try {
      final icon = WeatherIcons.fromString(_searchTerm);

      return Container(
        padding: EdgeInsets.only(top: 32),
        child: Center(
          child: Container(
            child: Icon(
              icon,
              size: 100,
            ),
          ),
        ),
      );
    } catch (err) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              "Unable to find icon!",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Text("Try one of the following:"),
          Text(
            WeatherIconsUtil.iconMap.keys.take(10).join("\n"),
          ),
        ],
      );
    }
  }
}

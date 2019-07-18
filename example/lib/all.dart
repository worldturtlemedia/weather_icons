import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

import 'util.dart';

class AllScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Icons"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        children: _createIconList(context),
      ),
    );
  }

  List<Widget> _createIconList(BuildContext context) {
    return WeatherIconsUtil.iconMap.keys.map((name) {
      final icon = WeatherIcons.fromString(name);

      return GridTile(
        child: Container(
          color: Theme.of(context).primaryColorDark,
          padding: EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 23),
                  child: Icon(
                    icon,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "'$name'",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      );
    }).toList();
  }
}

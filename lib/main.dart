import 'package:flutter/material.dart';
import 'package:smart_home/SensorScreen/components/body.dart';
import 'package:smart_home/SensorScreen/sensor_screen.dart';
import 'package:smart_home/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: kDarkGreyColor,
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.flash_on)),
                  Tab(icon: Icon(Icons.water)),
                  Tab(icon: Icon(Icons.mode_night_outlined)),
                ],
              ),
              title: Text('Smart Home'),
            ),
            body: TabBarView(
              children: <Widget>[
                SensorScreen(),
                SensorScreen(),
                SensorScreen()
              ],
            )),
      ),
    );
  }
}

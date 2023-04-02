import 'package:flame_sensor_game/game.dart';
import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  double x = 0;
  double y = 0;
  double z = 0;
  String direction = '';
  void sensor() {
    gyroscopeEvents.listen((GyroscopeEvent event) {
      print(event);
      if (event.x > 0.001) {}
    });
  }

  @override
  void initState() {
    gyroscopeEvents.listen((GyroscopeEvent event) {
      print(event);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ElevatedButton(onPressed: sensor, child: Text('Click Me'))],
      ),
    );
  }
}

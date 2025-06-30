import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  static const platform = MethodChannel('com.example.myapp/channel');

  Future<void> getBatteryLevel() async {
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      print('Battery level: $result%');
    } on PlatformException catch (e) {
      print("Failed to get battery level: '${e.message}'.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: getBatteryLevel,
            child: Text('Get Battery Level'),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MyHomePage());


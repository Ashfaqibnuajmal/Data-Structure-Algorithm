// import 'package:flutter/services.dart';
// import 'package:flutter/material.dart';

// class MyHomePage extends StatelessWidget {
//   static const platform = MethodChannel('com.example.myapp/channel');

//   Future<void> getBatteryLevel() async {
//     try {
//       final int result = await platform.invokeMethod('getBatteryLevel');
//       print('Battery level: $result%');
//     } on PlatformException catch (e) {
//       print("Failed to get battery level: '${e.message}'.");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: ElevatedButton(
//             onPressed: getBatteryLevel,
//             child: Text('Get Battery Level'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() => runApp(MyHomePage());
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyWidget extends StatelessWidget {
  static const platform = MethodChannel("come.example,methodchannel");
  Future<void> getbattery() async {
    try {
      final int result = await platform.invokeMethod("getbattery");
      print("batter level is $result");
    } on PlatformException catch (e) {
      print("get battery levle");
    }
  }

  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: getbattery, child: const Text("get battery level")),
      ),
    );
  }
}

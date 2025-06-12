import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => ),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
          Center(child: Text('Splash Screen', style: TextStyle(fontSize: 24))),
    );
  }
}

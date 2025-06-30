import 'package:dsa/dsa/Api/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdviceApp());
}

class AdviceApp extends StatelessWidget {
  const AdviceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AdviceScreen(),
    );
  }
}

import 'package:dsa/dsa/Modal/modal.dart';
import 'package:flutter/material.dart';

class AdviceScreen extends StatelessWidget {
  final List<Advice> adviceList = [
    Advice(text: 'Never give up.'),
    Advice(text: 'Stay positive.'),
    Advice(text: 'Learn something new.'),
    Advice(text: 'Take breaks.'),
    Advice(text: 'Be kind to yourself.'),
  ];

  AdviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Advice List')),
      body: ListView.builder(
        itemCount: adviceList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(adviceList[index].text),
          );
        },
      ),
    );
  }
}

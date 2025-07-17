import 'package:dsa/dsa/Modal/modal.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Advice> asviceList = [
      Advice(text: "never give up"),
      Advice(text: "hello")
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("advice list"),
      ),
      body: ListView.builder(
          itemCount: asviceList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(asviceList[index].text),
            );
          }),
    );
  }
}

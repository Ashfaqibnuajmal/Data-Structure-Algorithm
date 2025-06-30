import 'package:dsa/dsa/Api/services.dart';
import 'package:flutter/material.dart';

class AdviceScreen extends StatefulWidget {
  const AdviceScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AdviceScreenState createState() => _AdviceScreenState();
}

class _AdviceScreenState extends State<AdviceScreen> {
  String advice = 'Click the button to get advice';

  void getAdvice() async {
    final result = await AdviceService.fetchAdvice();
    setState(() {
      advice = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Advice App')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(advice,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: getAdvice, child: const Text('Get Advice'))
            ],
          ),
        ),
      ),
    );
  }
}

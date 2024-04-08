import 'package:flutter/material.dart';

class screentwo extends StatelessWidget {
  const screentwo({super.key});

  @override
  Widget build(BuildContext context) {
    final received = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen two'),
      ),
      body: Column(
        children: [
          Text(received),
          ElevatedButton(
              child: const Text('Back to one'),
              onPressed: () {
                Navigator.pop(context, 'yes');
              }),
        ],
      ),
    );
  }
}

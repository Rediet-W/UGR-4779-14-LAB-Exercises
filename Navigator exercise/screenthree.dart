import 'package:flutter/material.dart';

class screenthree extends StatelessWidget {
  const screenthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen three'),
        backgroundColor: Colors.green,
      ),
      body: ElevatedButton(
          child: const Text('Next'),
          onPressed: () async {
            final result = await Navigator.pushNamed(context, '/one');
          }),
    );
  }
}

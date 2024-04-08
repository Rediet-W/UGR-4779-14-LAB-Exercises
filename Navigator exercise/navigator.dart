import 'package:flutter/material.dart';
import 'package:lab/screenthree.dart';
import 'package:lab/screentwo.dart';

void main() {
  runApp(MaterialApp(
    title: 'Original',
    initialRoute: '/',
    routes: {
      '/': (context) => const screenthree(),
      '/one': (context) => const screenone()
    },
  ));
}

class screenone extends StatelessWidget {
  const screenone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screen one'),
        backgroundColor: Colors.blue,
      ),
      body: ElevatedButton(
          child: const Text('Next'),
          onPressed: () async {
            final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const screentwo(),
                  settings: const RouteSettings(
                      arguments: "Data passed to screen two"),
                ));
            print(result);
          }),
    );
  }
}

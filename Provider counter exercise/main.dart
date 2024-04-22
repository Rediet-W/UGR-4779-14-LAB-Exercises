import 'package:flutter/material.dart';
import 'package:lab/counter/Provider%20counter%20exercise/counter.dart';
import 'package:lab/counter/Provider%20counter%20exercise/provider/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lab/counter/Provider%20counter%20exercise/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final count = counter.count;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Counter with Provider'),
      ),
      body: Center(
        child:
            Text('$count', style: Theme.of(context).textTheme.headlineMedium),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter.increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 9),
          FloatingActionButton(
            onPressed: () {
              counter.decrement();
            },
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}

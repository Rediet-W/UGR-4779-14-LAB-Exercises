import 'package:flutter/material.dart';
import 'package:lab/to_notifier.dart';

import 'package:provider/provider.dart';

class TodoDetailScreen extends StatelessWidget {
  const TodoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todoId = ModalRoute.of(context)?.settings.arguments as int?;
    final todo = Provider.of<TodosNotifier>(context, listen: false)
        .todos
        .firstWhere((todo) => todo.id == todoId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title: ${todo.title}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Completed: ${todo.completed}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

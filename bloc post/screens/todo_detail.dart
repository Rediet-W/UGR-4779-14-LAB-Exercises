import 'package:flutter/material.dart';
import 'package:lab/post%20exercises/bloc%20post/models/todo.dart';

class TodoDetailScreen extends StatelessWidget {
  const TodoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todoId = ModalRoute.of(context)?.settings.arguments as int?;
    final Todo todo = Todo(
      id: todoId ?? 0, // Replace with actual logic to fetch todo details
      title: 'Todo $todoId', // Replace with actual logic to fetch todo details
      completed: false, // Replace with actual logic to fetch todo details
    );

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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lab/post%20exercises/riverpod%20post/notifiers.dart';

class TodoDetailScreen extends ConsumerWidget {
  const TodoDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoId = ModalRoute.of(context)?.settings.arguments as int?;
    final todo = ref
        .watch(todoNotifierProvider)
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lab/post%20exercises/riverpod%20post/models/todo.dart';
import 'package:lab/post%20exercises/riverpod%20post/notifiers.dart';

class TodoListScreen extends ConsumerWidget {
  const TodoListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosNotifier = ref.watch(todoNotifierProvider);
    if (todosNotifier.todos.isEmpty) {
      ref.read(todoNotifierProvider.notifier).loadData();
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Material(
        child: Scaffold(
          appBar: AppBar(
            title: Text(' To do with riverpod'),
            backgroundColor: Colors.amber,
          ),
          body: ListView.builder(
            itemCount: todosNotifier.todos.length,
            itemBuilder: (context, index) {
              final Todo todo = todosNotifier.todos[index];
              return ListTile(
                title: Text(todo.title),
                subtitle: Text('Completed: ${todo.completed}'),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/todo_detail',
                    arguments: todo.id, // Pass the todo id as arguments
                  );
                },
              );
            },
          ),
        ),
      );
    }
  }
}

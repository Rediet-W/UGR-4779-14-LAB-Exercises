import 'package:flutter/material.dart';
import 'package:lab/post%20exercises/provider%20post/models/todo.dart';
import 'package:lab/post%20exercises/provider%20post/to_notifier.dart';
import 'package:provider/provider.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo with Provider'),
        backgroundColor: Colors.amber,
      ),
      body: Consumer<TodosNotifier>(
        builder: (context, todosNotifier, child) {
          if (todosNotifier.todos.isEmpty) {
            todosNotifier.loadData();
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
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
            );
          }
        },
      ),
    );
  }
}

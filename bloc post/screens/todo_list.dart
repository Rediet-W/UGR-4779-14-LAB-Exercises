import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab/post%20exercises/bloc%20post/blocs/todo_bloc.dart';
import 'package:lab/post%20exercises/bloc%20post/blocs/todo_event.dart';
import 'package:lab/post%20exercises/bloc%20post/models/todo.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: BlocBuilder<TodoBloc, List<Todo>>(
        builder: (context, todos) {
          if (todos.isEmpty) {
            BlocProvider.of<TodoBloc>(context).add(LoadTodos());
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final Todo todo = todos[index];
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

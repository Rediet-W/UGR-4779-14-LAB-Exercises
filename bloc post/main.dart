import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab/post%20exercises/bloc%20post/blocs/todo_bloc.dart';
import 'package:lab/post%20exercises/bloc%20post/blocs/todo_event.dart';
import 'package:lab/post%20exercises/bloc%20post/screens/todo_detail.dart';
import 'package:lab/post%20exercises/bloc%20post/screens/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider(
              create: (context) => TodoBloc()
                ..add(LoadTodos()), // Ensure LoadTodos is dispatched here
              child: const TodoListScreen(),
            ),
        '/todo_detail': (context) => const TodoDetailScreen(),
      },
    );
  }
}

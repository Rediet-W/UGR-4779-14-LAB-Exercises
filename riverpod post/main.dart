import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lab/post%20exercises/riverpod%20post/screens/todo_detail.dart';
import 'package:lab/post%20exercises/riverpod%20post/screens/todo_list.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      initialRoute: '/',
      routes: {
        '/': (context) => const TodoListScreen(),
        '/todo_detail': (context) => const TodoDetailScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lab/post%20exercises/provider%20post/screens/todo_detail.dart';
import 'package:lab/post%20exercises/provider%20post/screens/todo_list.dart';
import 'package:lab/post%20exercises/provider%20post/to_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosNotifier(),
      child: MaterialApp(
        title: 'Todo App',
        initialRoute: '/',
        routes: {
          '/': (context) => const TodoListScreen(),
          '/todo_detail': (context) => const TodoDetailScreen(),
        },
      ),
    );
  }
}

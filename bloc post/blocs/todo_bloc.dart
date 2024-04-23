import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:lab/post%20exercises/bloc%20post/blocs/todo_event.dart';
import 'package:lab/post%20exercises/bloc%20post/models/todo.dart';
import 'package:http/http.dart' as http;

class TodoBloc extends Bloc<TodoEvent, List<Todo>> {
  TodoBloc() : super([]);

  Stream<List<Todo>> mapEventToState(TodoEvent event) async* {
    if (event is LoadTodos) {
      try {
        final response = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
        if (response.statusCode == 200) {
          final List<dynamic> data = json.decode(response.body);
          final List<Todo> todos =
              data.map((json) => Todo.fromJson(json)).toList();
          yield todos;
        } else {
          throw Exception('Failed to load todos');
        }
      } catch (e) {
        throw Exception('Failed to fetch todos: $e');
      }
    }
  }
}

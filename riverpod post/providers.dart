import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lab/post%20exercises/riverpod%20post/notifiers.dart';

final todoNotifierProvider = ChangeNotifierProvider((ref) => TodosNotifier());

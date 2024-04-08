import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'Nav 2', home: Class()));
}

class Course {
  String code;
  String title;
  String description;
  Course({required this.code, required this.title, this.description = ""});
}

class Courselist extends StatelessWidget {
  const Courselist({required this.courses, required this.ontap});
  final List<Course> courses;
  final ValueChanged<Course> ontap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigation 2')),
      body: ListView(
        children: [
          for (var course in courses)
            ListTile(
              title: Text(course.title),
              subtitle: Text(course.code),
              onTap: () => ontap(course),
            )
        ],
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;
  const CourseDetailsScreen({required this.course});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          children: [
            Text(course.title),
            Text(course.code),
            Text(course.description),
          ],
        ),
      ),
    );
  }
}

class Class extends StatefulWidget {
  const Class({super.key});

  @override
  State<Class> createState() => _ClassState();
}

class _ClassState extends State<Class> {
  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }

  Course? _selectedCourse;

  List<Course> courses = [
    Course(
        code: "1CP",
        title: "Computer Programming",
        description: "Computer Organization, Architecture, Programming"),
    Course(
        code: "2M",
        title: "Mobile development",
        description: "Creating mobile appliations"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
            key: const ValueKey('CourseListScreen'),
            child: Courselist(
              courses: courses,
              ontap: _tabHandler,
            ),
          ),
          if (_selectedCourse != null)
            MaterialPage(
                key: ValueKey(_selectedCourse),
                child: CourseDetailsScreen(
                  course: _selectedCourse!,
                ))
        ],
      ),
    );
  }
}

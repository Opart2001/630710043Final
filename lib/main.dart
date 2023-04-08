import 'package:flutter/material.dart';
import 'package:taejai/pages/project/project_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VALORONT ',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const ProjectListPage(),
    );
  }
}


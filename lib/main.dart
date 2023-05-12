import 'package:flutter/material.dart';
import 'package:myapp12/contact.dart';
import 'package:myapp12/screen1.dart';
import 'package:myapp12/form.dart';
import 'package:myapp12/settings.dart';
import 'package:myapp12/task2.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      debugShowCheckedModeBanner: false,
      home: task_2(),
    );
  }
}

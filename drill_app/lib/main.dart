
import 'package:drill_app/presentation/home.dart';
import 'package:drill_app/presentation/lesson15.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter ドリル',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const Lesson15(),
  );
  }
}
import 'package:flutter/material.dart';
import 'package:todo_app/screen/addTodo.dart';
import 'package:todo_app/screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Monstserrat"),
      routes: {
        'homePage': (context) => HomePage(),
        'addTodo': (context) => addTodo(),
      },
      initialRoute: 'homePage',
    );
  }
}

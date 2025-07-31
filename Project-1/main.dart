import 'package:flutter/material.dart';
import 'home_page.dart';
import 'first_page.dart';
import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController t1 = new TextEditingController();
  TextEditingController t2 = new TextEditingController();
  String msg = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(t1: t1, t2: t2, msg: msg, doSum: doSum),
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
      },
    );
  }

  void doSum() {
    var a = t1.text;
    var b = t2.text;
    var c = int.parse(a) + int.parse(b);
    setState(() {
      msg = "Sum is $c";
    });
  }
}

// ...existing code...

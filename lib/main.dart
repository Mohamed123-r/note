import 'package:flutter/material.dart';
import 'package:note/Log_in_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      home:  Log_in_Page(),
      theme: ThemeData(
        primaryColor: Colors.grey,

      ),
    );
  }
}


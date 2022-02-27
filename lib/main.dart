import 'package:deepcare_demo/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DeepCareDemo());
}

class DeepCareDemo extends StatelessWidget {
  const DeepCareDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeepCare Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
      home: const SafeArea(
        child: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}

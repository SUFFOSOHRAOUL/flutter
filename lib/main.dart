import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 46, 2, 98),
          Color.fromARGB(255, 46, 2, 80),
        ]),
      ),
    ),
  );
}

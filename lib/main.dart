import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 164, 249, 6),
          Color.fromARGB(255, 255, 214, 7),
        ),
      ),
    ),
  );
}

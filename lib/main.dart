import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromRGBO(34, 10, 73, 1),
            const Color.fromRGBO(49, 21, 98, 1)),
      ),
    ),
  );
}

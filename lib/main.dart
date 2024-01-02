import 'package:flutter/material.dart';
import 'package:first_app/gradiant_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradiantContainer ( [Colors.amber,Colors.brown]),
      ),
    ),
  );

}


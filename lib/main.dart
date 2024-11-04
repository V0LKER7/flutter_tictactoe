import 'package:flutter/material.dart';
import 'package:flutter_tictactoe/activity.dart';

void main() {
  runApp(MaterialApp(
    home: Activity(),
    theme: ThemeData(
      primaryColor: Color.fromARGB(255, 32, 32, 32),
    ),
  ));
}

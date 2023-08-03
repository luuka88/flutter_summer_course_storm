import 'package:day_11_flutter/Task_page.dart';
import 'package:day_11_flutter/start_page.dart';
import 'package:day_11_flutter/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TaskPage(

    ),
    title: "Word Find Game",
    theme: ThemeData(fontFamily: 'Ribeye'),
  ));
}

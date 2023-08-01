import 'package:flutter/material.dart';
import 'package:day_16_flutter/Stop_wathch.dart';
void main() {
  runApp(StopwatchApp());
}

class StopwatchApp extends StatelessWidget {
  const StopwatchApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StopWatch(),);
  }
}

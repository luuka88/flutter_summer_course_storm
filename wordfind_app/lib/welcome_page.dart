import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';
class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientText('game',3.16),
    );
  }
}

import 'package:day_11_flutter/start_page.dart';
import 'package:flutter/material.dart';

import 'Gradient_letter.dart';
import 'gradient_text.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/back1.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.only(top: 200)),
            Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GradientLetter('W'),
                        GradientLetter('O'),
                        GradientLetter('R'),
                        GradientLetter('D'),
                      ],
                    ),
                    GradientText('Game', 31.6),
                    Expanded(child: Image.asset('assets/image/iCodeGuy.png'),),
                    // Ink.image(image: AssetImage('assets/images/IcodeGuy.png')),
                    Expanded(child: GradientText('READY?', 25.0)),
                  ],
                )),

          ],
        ),
      ),
      floatingActionButton: Container(
        width: 310,
        height: 60,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
            borderRadius: BorderRadius.circular(25)),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          child: Text(
            'PLAY',
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      backgroundColor: Color(0xFFFBF5F2),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
//Navigator.push(context,MaterialPageRoute(builder:(_)=> StartPage()));
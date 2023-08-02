import 'package:day_11_flutter/gradient_text.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFBF5F2),
        appBar: AppBar(
          leading: IconButton(
            icon: Image.asset('arrow_back.ping'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: SizedBox(
            height: 50.0,
            child: Image.asset('game_logo.png'),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/back2.png'), fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                ),
                Image.asset('iCodeGuyHead.png'),
                Padding(padding: EdgeInsets.only(top: 20)),
                GradientText('Player Name', 20),
                Padding(padding: EdgeInsets.only(top: 20))
              ],
            ),
          ),
        ),
    floatingActionButton: StartBottom('Start') ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }
}
class StartBottom extends StatelessWidget {
  const StartBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 31, height: 60,decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.centerLeft,end: Alignment.centerRight,colors: )),);
  }
}

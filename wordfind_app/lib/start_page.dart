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
    floatingActionButton: StartBuntton(text:'Start') ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }
}
class StartBuntton extends StatelessWidget {
  final String text;
  const StartBuntton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(width: 31, height: 60,decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.centerLeft,end: Alignment.centerRight,colors: [Color(0xFFE86B02),
      Color(0xFFFA9541),]),borderRadius: BorderRadius.circular(25)),child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,elevation: 0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),child: Text('Start',style: TextStyle(fontFamily: 'Nunito',fontSize: 24,fontWeight: FontWeight.w700),)),);
  }
}

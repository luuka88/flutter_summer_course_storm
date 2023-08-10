import 'package:day_11_flutter/Task_page.dart';
import 'package:day_11_flutter/gradient_text.dart';
import 'package:day_11_flutter/models/User_model.dart';
import 'package:flutter/material.dart';
import 'input_field.dart';

User newUser = User("Guest", 0);

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/image/arrow_back.png'),
          onPressed: () {
            Navigator.of(context).pop();
            newUser = User('guest', 0);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50.0,
          child: Image.asset('assets/image/game_logo.png'),
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
              Image.asset('assets/image/iCodeGuyHead.png'),
              Padding(padding: EdgeInsets.only(top: 20)),
              GradientText('Player Name', 20),
              Padding(padding: EdgeInsets.only(top: 20)),
              InputField(onSubmitted: _createUser)
            ],
          ),
        ),
      ),
      floatingActionButton: StartBuntton(
        newUser
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _createUser(String userName) {
    setState(() {
      newUser.userName = userName;
    });
  }
}

class StartBuntton extends StatelessWidget {

  final User newUser;
  const StartBuntton( this.newUser, {super.key});

  @override
  Widget build(BuildContext context) {
    return newUser.userName == 'Guest'
        ? Container()
        : Container(
            width: 310,
            height: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFE86B02),
                      Color(0xFFFA9541),
                    ]),
                borderRadius: BorderRadius.circular(25)),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TaskPage(newUser)));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: Text(
                  'Start',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                )),
          );
  }
}

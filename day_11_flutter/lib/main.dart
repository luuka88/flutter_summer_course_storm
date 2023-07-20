import 'package:flutter/material.dart';

void main() {
  const Text myText = Text('hello Storm');
  const Center myCenterText = Center(
    child: myText,
  );
  const Scaffold myScaffold = Scaffold(
    body: myCenterText,
  );
  const MaterialApp myApp = MaterialApp(
    home: myScaffold,
  );
  const MyCrazyApp crazyApp = MyCrazyApp();
  runApp(crazyApp);
}

// stateless widget
class MyCrazyApp extends StatelessWidget {
  const MyCrazyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello Stor',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Nunito',

              color: Color(0xFFB3CBFF),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Hello Stormers',
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Image.asset(
            'assets/download.jpeg',
            width: 200,
          ),
          onPressed: printHello,
        ),
      ),
    );
  }
}



void printHello (){
  print('Hello Storm');
}
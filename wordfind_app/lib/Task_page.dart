import 'package:day_11_flutter/data/questions.dart';
import 'package:day_11_flutter/models/Task_model.dart';
import 'package:day_11_flutter/models/User_model.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  final User user;
  const TaskPage(this.user,{super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late List<TaskModel>listQuestions;
  late User user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listQuestions = questions;
    user =widget.user;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/image/arrow_back.png'),
          onPressed: () {Navigator.pop(context);},
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '${user.userName}',
          style: TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(bottom: 10),
                  color: Colors.white,
                  child: Center(
                    child: Container(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          child: Text(
                            'Reload',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                        ),
                        width: 150,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                              Color(0xFFE86B02),
                              Color(0xFFFA9541)
                            ]))),
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/back2.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

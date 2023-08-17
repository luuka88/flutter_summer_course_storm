import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/components/text_field_input.dart';
import 'package:lesson_20_flutter/resources/auth_methods.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void loginUser() async {
    String result = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (result == "success") {
      print('logged in');
    } else {
      print('not logged in');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2, child: Container()),
              Text('iCodegramm'),
              SizedBox(
                height: 64,
              ),
              TextInputField(
                  hintText: 'email',
                  textEditingController: _emailController,
                  textInputType: TextInputType.emailAddress,
                  isPassword: false),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                  hintText: 'enter your password',
                  textEditingController: _passwordController,
                  textInputType: TextInputType.text,
                  isPassword: true),
              SizedBox(
                height: 64,
              ),
              InkWell(
                onTap: loginUser,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      color: Colors.blue),
                  child: Center(
                    child: Text('sign up'),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Flexible(flex: 2, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}

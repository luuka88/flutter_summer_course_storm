import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/components/text_field_input.dart';
import 'package:lesson_20_flutter/resources/auth_methods.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2, child: Container()),
              Text(
                'icodegramm',
                style: TextStyle(
                  fontSize: 34,
                ),
              ),
              SizedBox(
                height: 64,
              ),
              TextInputField(
                hintText: 'user email',
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
                isPassword: false,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: 'user name',
                textEditingController: _usernameController,
                textInputType: TextInputType.text,
                isPassword: false,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: 'password',
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
                isPassword: true,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: 'repeat password',
                textEditingController: _repeatpasswordController,
                textInputType: TextInputType.text,
                isPassword: true,
              ),
              SizedBox(
                height: 64,
              ),
              InkWell(
                onTap: () {
                  AuthMethods().signUpUser(
                      email: _emailController.text,
                      username: _usernameController.text,
                      password: _passwordController.text);
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.lightBlue),
                  child: Text('sign up'),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

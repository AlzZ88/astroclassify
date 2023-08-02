import 'package:astroclassify/widget/Login.dart';
import 'package:flutter/material.dart';

import '../widget/Register.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool register=false;
    return Scaffold(body: 
      SafeArea(
        child: 
        Container(
          color: Colors.black,
          child: Center(
            // ignore: dead_code
            child: register? Register():Login(),
          ),
        )
      ),
    );

  }
}
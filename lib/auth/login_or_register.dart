import 'package:flutter/material.dart';


import '../pages/login.dart';
import '../pages/register.dart';


class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

//initially show login page

  bool showLoginPage=true;

  //toggle btwn login & register

  void togglepages(){
    setState(() {
      showLoginPage=!showLoginPage;
    });
  }



  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(
        onTap: togglepages,
      );
    } else{
      return RegisterPage(
        onTap: togglepages,
      );
    }
  }
}
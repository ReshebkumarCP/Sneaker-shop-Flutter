import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import '../pages/intro_page.dart';
import 'login_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot)  {
          //user logged In
          if (snapshot.hasData){
            return IntroPage();
          }

          //user is Not Logged In
          else{
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
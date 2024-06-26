import 'package:flutter/material.dart';
import 'package:flutter_application_6/auth/auth_service.dart';
class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});
  void logout(){final _auth=AuthService();
  _auth.signOut();}

  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(actions: [IconButton(onPressed: logout, icon:const Icon(Icons.logout))],),);

  }
}

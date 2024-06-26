import 'package:flutter/material.dart';
import 'package:flutter_application_6/components/button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../auth/auth_service.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  void logout()
  {
    final _auth=AuthService();
  _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: logout, icon: const Icon(Icons.logout))],),
      backgroundColor: Color.fromARGB(255, 97, 142, 225),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),

            // shop name
            Text(
              "SNEAKER MANIA",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 30,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25),

            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/salmon.png'),
            ),

            const SizedBox(height: 25),

            // title
            Text(
              "THE PARADISE FOR SNEAKERS",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            // subtitle
            Text(
              "FEEL THE EASE OF SNEAKER SHOPPING",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            // get started button
            MyButton(
              text: "Get Started",
              onTap: () {
                // go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}

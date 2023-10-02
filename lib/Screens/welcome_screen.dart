import 'package:flutter/material.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/welcome_screen.jpg",
                width: 400, height: 495, fit: BoxFit.fitWidth), // <-- Add this
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20.0,
              ),
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(text: 'Explore and maximize\n'),
                    TextSpan(
                      text: 'your learning potential',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1F5BD0)),
                    ),
                  ])),
            ),

            RichText(
                text: const TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 131, 127, 127),
                    ),
                    children: [
                  TextSpan(text: 'Knowledge and a commitment to  \n'),
                  TextSpan(text: 'continuous learning ,you have the power\n'),
                  TextSpan(text: 'to achieve greatness.'),
                ])),

            Padding(
              padding: const EdgeInsets.only(top: 35, left: 70),
              child: Row(
                children: [
                  MaterialButton(
                      color: const Color.fromARGB(255, 156, 217, 243),
                      minWidth: 270,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: const Text(
                        "GET STARTED ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

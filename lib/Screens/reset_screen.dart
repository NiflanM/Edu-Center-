import 'package:flutter/material.dart';

import 'package:flutter_application_1/Screens/login_screen.dart';

//import 'package:flutter_application_1/Screens/signup_screen.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 156, 217, 243),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 170.0, left: 114.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  'Reset Password',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(193, 253, 255, 254),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 08.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter the New Password',
                      hintStyle: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 131, 127, 127),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(193, 253, 255, 254),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 08.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 131, 127, 127),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 55, left: 65),
              child: Row(
                children: [
                  MaterialButton(
                      color: const Color.fromARGB(255, 223, 224, 240),
                      minWidth: 285,
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
                        "Confirm ",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontSize: 25,
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

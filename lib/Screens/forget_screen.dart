import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/login_screen.dart';
import 'package:flutter_application_1/Screens/verify_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);
  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 156, 217, 243),
        leading: IconButton(
          color: const Color.fromARGB(255, 0, 0, 0),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 156, 217, 243),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90.0, left: 113.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 07.0, left: 53.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your email account to reset password ',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16.5,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 41, 45, 50),
                  ),
                ),
              ),
            ),
            Image.network(
              "https://cdn.dribbble.com/userupload/10117409/file/original-39227826d6798b0cb412ef6a94f71470.png?resize=400x300",
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20,
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
                      hintText: 'Enter your Email',
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
              padding: const EdgeInsets.only(top: 56, left: 52),
              child: Row(
                children: [
                  MaterialButton(
                      color: const Color.fromARGB(255, 223, 224, 240),
                      minWidth: 308,
                      height: 60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifyScreen()));
                      },
                      child: const Text(
                        "Continue ",
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

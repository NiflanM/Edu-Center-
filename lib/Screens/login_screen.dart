import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/forget_screen.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';
import 'package:flutter_application_1/Screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _email = "";
  String _password = "";

  void _handleLogin() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: _email, password: _password);
      print("User Logged In: ${userCredential.user!.email}");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    } catch (e) {
      print("Error During login: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 156, 217, 243),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 60, right: 16, left: 16),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.black, // Label text color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black), // Border color
                      ),
                      fillColor: Colors.white, // Set the background color
                      filled: true,
                    ),
                    style: const TextStyle(color: Colors.black), // Text color
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Your Email";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _email = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.black, // Label text color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black), // Border color
                      ),
                      fillColor: Colors.white, // Set the background color
                      filled: true,
                    ),
                    style: const TextStyle(color: Colors.black), // Text color
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Your Password";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotScreen(),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 225, top: 3),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _handleLogin();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 223, 224, 240),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 150, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Don\'t have an account? Sign up',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

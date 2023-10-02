import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/reset_screen.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 156, 217, 243),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 170.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  'Enter Verifications Code',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 07.0, left: 58.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'We have sent a code to abc@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16.5,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 41, 45, 50),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 27.0),
                    child: Container(
                      height: 53,
                      width: 75,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(193, 253, 255, 254),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '',
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
                  width: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 53,
                    width: 75,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(193, 253, 255, 254),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
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
                SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 53,
                    width: 75,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(193, 253, 255, 254),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
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
                const SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 53,
                    width: 75,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(193, 253, 255, 254),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 55, left: 57),
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
                                builder: (context) => const ResetScreen()));
                      },
                      child: const Text(
                        "Verify ",
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

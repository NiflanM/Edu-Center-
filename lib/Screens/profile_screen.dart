import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/help_screen.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';
import 'package:flutter_application_1/Screens/notes_screen.dart';
import 'package:flutter_application_1/Utils/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  int _currentIndex = 2; // Current selected index for the bottom navigation bar

  // Define a function to handle navigation based on the selected index
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Handle navigation to the corresponding page
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NotesScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HelpScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    User? user = _auth.currentUser;
    String? _email = user?.email;
    String? _username = user?.displayName;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F2F2),
      appBar: AppBar(
        leadingWidth: 30,
        backgroundColor: const Color.fromARGB(255, 156, 217, 243),
        leading: IconButton(
          color: const Color.fromARGB(255, 0, 0, 0),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 160.0, top: 5.0),
            child: SizedBox(
              height: 70,
              width: 90,
              child: Image.network(
                "https://cdn.dribbble.com/userupload/10117350/file/original-b2055516aa4e3d554736958e6e1aa365.png?resize=400x240",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Stack(
              children: [
                _image != null
                    ? CircleAvatar(
                        radius: 64,
                        backgroundImage: MemoryImage(_image!),
                      )
                    : const CircleAvatar(
                        radius: 64,
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/1/1e/Default-avatar.jpg'),
                      ),
                Positioned(
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt,
                      )),
                  bottom: -10,
                  left: 80,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(" $_username",
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
            const SizedBox(height: 10),
            Text(" $_email",
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Full Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(193, 216, 226, 221),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 08, left: 20.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your full name',
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
                  const SizedBox(height: 20),
                  const Text(
                    'Phone number',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(193, 216, 226, 221),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your phone number',
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
                  const SizedBox(height: 20),
                  const Text(
                    'About',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(193, 216, 226, 221),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'About',
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
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 45),
                    child: Row(
                      children: [
                        MaterialButton(
                          color: const Color.fromARGB(255, 156, 217, 243),
                          minWidth: 285,
                          height: 50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProfileScreen()));
                          },
                          child: const Text(
                            "Save ",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: const Color(0xFFF6F2F2),

        tabBackgroundColor: Color.fromARGB(169, 192, 186, 186),
        iconSize: 30,
        gap: 8,
        selectedIndex: _currentIndex, // Set the selected index
        onTabChange: _onTabTapped, // Define the callback function
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.book,
            text: "Notes",
          ),
          GButton(
            icon: Icons.person,
            text: "Profile",
          ),
          GButton(
            icon: Icons.help,
            text: "Help",
          ),
        ],
      ),
    );
  }
}

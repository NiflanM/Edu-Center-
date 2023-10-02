import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Faqs_screen.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';
import 'package:flutter_application_1/Screens/notes_screen.dart';
import 'package:flutter_application_1/Screens/profile_screen.dart';
import 'package:flutter_application_1/Screens/welcome_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  int _currentIndex = 3; // Current selected index for the bottom navigation bar

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
                MaterialPageRoute(builder: (context) => const ProfileScreen()));
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 160.0, top: 5.0),
            child: SizedBox(
              height: 70, // Adjust the height as needed
              width: 90, // Adjust the width as needed
              child: Image.network(
                "https://cdn.dribbble.com/userupload/10117350/file/original-b2055516aa4e3d554736958e6e1aa365.png?resize=400x240",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30, left: 05),
            child: Image.asset(
              "assets/sssa.png",
              width: 349,
              height: 221,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 50),
          // Add spacing between the image and buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FaqsScreen()));
                },
                child: Container(
                  width: 120, // Adjust the width as needed
                  height: 120, // Adjust the height as needed
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white, // Background color of the button
                  ),
                  child: const Center(
                    child: Text(
                      'FAQs',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black, // Text color
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Add your functionality for the "Contact Us" button here
                },
                child: Container(
                  width: 120, // Adjust the width as needed
                  height: 120, // Adjust the height as needed
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white, // Background color of the button
                  ),
                  child: const Center(
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black, // Text color
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 53),
            child: Row(
              children: [
                MaterialButton(
                  color: const Color.fromARGB(255, 233, 0, 0),
                  minWidth: 300,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WelcomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 37.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'info@educenter.com',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 41, 45, 50),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 08.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 41, 45, 50),
                      size: 20,
                    ),
                    SizedBox(width: 2),
                    Text(
                      '+94777132654',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 41, 45, 50),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                    height: 9), // Add spacing between mobile number and icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Color.fromARGB(255, 41, 45, 50),
                      size: 30,
                    ),
                    const SizedBox(width: 12), // Add spacing between icons
                    // Add Facebook icon
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3670/3670151.png', // Replace with the actual image URL
                      width: 25,
                      height: 25,
                    ),
                    const SizedBox(width: 12), // Add spacing between icons
                    // Add Twitter icon
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/1200px-Instagram_logo_2022.svg.png', // Replace with the actual image URL
                      width: 25,
                      height: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
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

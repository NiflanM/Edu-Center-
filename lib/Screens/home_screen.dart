import 'package:flutter/material.dart';

import 'package:flutter_application_1/Screens/notes_screen.dart';
import 'package:flutter_application_1/Screens/papers_screen.dart';

import 'package:flutter_application_1/Screens/profile_screen.dart';
import 'package:flutter_application_1/Screens/help_screen.dart';
import 'package:flutter_application_1/Screens/read_screen.dart';
import 'package:flutter_application_1/Screens/watch_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Current selected index for the bottom navigation bar

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
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 315.0, top: 10.0),
            child: Container(
              height: 70, // Adjust the height as needed
              width: 90, // Adjust the width as needed
              child: Image.network(
                "https://cdn.dribbble.com/userupload/10117350/file/original-b2055516aa4e3d554736958e6e1aa365.png?resize=400x240",
                fit: BoxFit.fill,
              ),
              // Add your image asset path here
            ),
          ),
        ],

        automaticallyImplyLeading: false, // Set this to false
        backgroundColor: const Color.fromARGB(255, 156, 217, 243),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30.0, left: 20),
            child: Text(
              'How do you want to learn?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Add an image below the text
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 20, top: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WatchScreen()));
                  },
                  child: Image.network(
                    "https://www.komando.com/wp-content/uploads/2020/06/kk-article-20200617-how-to-skip-ads-in-youtube-videos-1200x675-1.jpg", // Add the URL of your image here
                    width: 390, // Adjust the width as needed
                    height: 170, // Adjust the height as needed
                    fit: BoxFit.fill, // Adjust the fit as needed'
                  ),
                ),
                Container(
                  color: const Color.fromARGB(151, 0, 0, 0),
                  width: 390,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'Watch',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 20, top: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaperScreen()));
                  },
                  child: Image.network(
                    "https://i0.wp.com/kenyayote.com/wp-content/uploads/2018/05/2017-KCSE-Past-papers-for-all-subjects-for-revision.jpg?ssl=1", // Add the URL of your image here
                    width: 390, // Adjust the width as needed
                    height: 170, // Adjust the height as needed
                    fit: BoxFit.fill, // Adjust the fit as needed
                  ),
                ),
                Container(
                  color: const Color.fromARGB(151, 0, 0, 0),
                  width: 390,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'Past Papers',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 20, top: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReadScreen()));
                  },
                  child: Image.network(
                    "https://images.newrepublic.com/3b5f4fa15f912f5ab4084f381441148c1d85b0c4.jpeg", // Add the URL of your image here
                    width: 390, // Adjust the width as needed
                    height: 170, // Adjust the height as needed
                    fit: BoxFit.fill, // Adjust the fit as needed
                  ),
                ),
                Container(
                  color: const Color.fromARGB(151, 0, 0, 0),
                  width: 390,
                  height: 50,
                  child: const Center(
                    child: Text(
                      'Read',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // You can add more text or images here as needed
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

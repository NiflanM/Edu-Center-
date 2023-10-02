import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';
import 'package:flutter_application_1/Screens/notes_screen.dart';
import 'package:flutter_application_1/Screens/profile_screen.dart';
import 'package:flutter_application_1/Screens/help_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key}) : super(key: key);
  @override
  _FaqsScreenState createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  final List<Map<String, dynamic>> _items = [
    {
      "id": 0,
      "title": "What do I do if I encounter technical issues with the app?",
      "content":
          "We provide customer support to the users with any technical difficulties or any inquiries",
    },
    {
      "id": 1,
      "title": "Is the app suitable for self-paced learning?",
      "content": "Yes, the app is designed to accommodate self-paced learning.",
    },
    {
      "id": 2,
      "title": "Is the app free to use, or does it require a subscription?",
      "content": "Edu Center currently offers the study materials for free. ",
    },
    {
      "id": 3,
      "title": "What is the purpose of the app?",
      "content":
          "The app is designed to provide students with access to a wide range of educational study materials, resources, and tools to enhance their learning experience.",
    },
  ];

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
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 160.0, top: 06.0),
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
          const Padding(
            padding: EdgeInsets.only(top: 72.0, left: 11),
            child: Text(
              'FAQs',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 06.0, left: 10),
            child: Text(
              'Frequently Asked Questions',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 35), // Add spacing here
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.separated(
                itemCount: _items.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 25), // Add spacing between items
                itemBuilder: (context, index) {
                  final item = _items[index];
                  return Card(
                    color: const Color(0xFFF6F2F2),
                    elevation: 4,
                    child: ExpansionTile(
                      title: Text(
                        item['title'],
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            item['content'],
                            style: const TextStyle(
                                color: Colors.black, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
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

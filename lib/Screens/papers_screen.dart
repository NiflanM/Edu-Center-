import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/help_screen.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';
import 'package:flutter_application_1/Screens/notes_screen.dart';
import 'package:flutter_application_1/Screens/profile_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class PaperScreen extends StatefulWidget {
  const PaperScreen({Key? key}) : super(key: key);
  @override
  _PaperScreenState createState() => _PaperScreenState();
}

class _PaperScreenState extends State<PaperScreen> {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(151, 223, 224, 240),
              width: 410,
              height: 50,
              child: const Center(
                child: Text(
                  'PAPERS',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: Container(
                      height: 75,
                      color: Colors.white,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WebViewApp(
                                  webUrl:
                                      'https://pastpapers.wiki/2021-o-l-information-and-communication-technology-marking-scheme-english-medium/?swcfpc=1'),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.black), // Change the color here
                        ),
                        child: const Text(
                          '2022 ICT O/L Paper ',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: Container(
                      height: 75,
                      color: Colors.white,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WebViewApp(
                                  webUrl:
                                      'https://pastpapers.wiki/2021-o-l-information-and-communication-technology-marking-scheme-english-medium/?swcfpc=1'),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(
                                  158, 244, 67, 54)), // Change the color here
                        ),
                        child: const Text(
                          '2022 ICT O/L Answers ',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: Container(
                      height: 75,
                      color: Colors.white,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WebViewApp(
                                  webUrl:
                                      'https://pastpapers.wiki/2021-o-l-information-and-communication-technology-marking-scheme-english-medium/?swcfpc=1'),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.black), // Change the color here
                        ),
                        child: const Text(
                          '2022 ICT O/L Paper ',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: Container(
                      height: 75,
                      color: Colors.white,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WebViewApp(
                                  webUrl:
                                      'https://pastpapers.wiki/2021-o-l-information-and-communication-technology-marking-scheme-english-medium/?swcfpc=1'),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.black), // Change the color here
                        ),
                        child: const Text(
                          '2022 ICT O/L Paper ',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: Container(
                      height: 75,
                      color: Colors.white,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WebViewApp(
                                  webUrl:
                                      'https://pastpapers.wiki/2021-o-l-information-and-communication-technology-marking-scheme-english-medium/?swcfpc=1'),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.black), // Change the color here
                        ),
                        child: const Text(
                          '2022 ICT O/L Paper ',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
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
        selectedIndex: 0, // Set the selected index
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

class WebViewApp extends StatefulWidget {
  final String webUrl;

  const WebViewApp({super.key, required this.webUrl});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  void initState() {
    super.initState();
  }

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
                MaterialPageRoute(builder: (context) => const PaperScreen()));
          },
        ),
        title: const Text('EduCenter View',
            style: TextStyle(
              fontFamily: 'Inter',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..loadRequest(
            Uri.parse(widget.webUrl),
          ),
      ),
    );
  }
}

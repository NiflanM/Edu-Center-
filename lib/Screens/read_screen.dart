import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/help_screen.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';
import 'package:flutter_application_1/Screens/notes_screen.dart';
import 'package:flutter_application_1/Screens/profile_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ReadScreen extends StatefulWidget {
  const ReadScreen({Key? key}) : super(key: key);
  @override
  _ReadScreenState createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  int? _currentIndex =
      null; // Current selected index for the bottom navigation bar

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
                'https://cdn.dribbble.com/userupload/10117350/file/original-b2055516aa4e3d554736958e6e1aa365.png?resize=400x240', // Replace with your image URL
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
                  'Read',
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WebViewApp(
                              webUrl:
                                  'https://www.e-thaksalawa.moe.gov.lk/moodle/course/view.php?id=842',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height:
                            230, // Increased height for better image coverage
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Center text vertically
                          children: [
                            SizedBox(
                              height:
                                  170, // Adjust the height as needed for the image
                              width: double
                                  .infinity, // Make the image take full width
                              child: Image.network(
                                'https://pastpapers.wiki/wp-content/webp-express/webp-images/uploads/2020/07/Grade-11-Information-and-Communication-Technology-textbook-1-750x375.jpg.webp', // Replace with your image URL
                                fit: BoxFit
                                    .cover, // Ensure the image fully covers the button
                              ),
                            ),
                            const SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            const Text(
                              'ICT - Grade 11',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                              textAlign: TextAlign
                                  .center, // Center the text horizontally
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WebViewApp(
                              webUrl:
                                  'https://www.e-thaksalawa.moe.gov.lk/moodle/course/view.php?id=841',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height:
                            230, // Increased height for better image coverage
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Center text vertically
                          children: [
                            SizedBox(
                              height:
                                  170, // Adjust the height as needed for the image
                              width: double
                                  .infinity, // Make the image take full width
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKhVgm6SMToLZLtsEYlY8VXnRvkxXpS-hZ72mIFcw_MQbdEPDzohnX8ElJXm1HTJ9Hrc4&usqp=CAU', // Replace with your image URL
                                fit: BoxFit
                                    .cover, // Ensure the image fully covers the button
                              ),
                            ),
                            const SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            const Text(
                              'Business Studies - Grade 11',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                              textAlign: TextAlign
                                  .center, // Center the text horizontally
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WebViewApp(
                              webUrl:
                                  'https://pastpapers.wiki/grade-11-history-textbook-in-sinhala-medium-new-syllabus/',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height:
                            230, // Increased height for better image coverage
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Center text vertically
                          children: [
                            SizedBox(
                              height:
                                  170, // Adjust the height as needed for the image
                              width: double
                                  .infinity, // Make the image take full width
                              child: Image.network(
                                'https://pastpapers.wiki/wp-content/uploads/2020/07/Grade-11-History-Textbook-in-Sinhala-Medium-New-Syllabus.jpg', // Replace with your image URL
                                fit: BoxFit
                                    .cover, // Ensure the image fully covers the button
                              ),
                            ),
                            const SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            const Text(
                              'History - Grade 11',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                              textAlign: TextAlign
                                  .center, // Center the text horizontally
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WebViewApp(
                              webUrl:
                                  'https://www.e-thaksalawa.moe.gov.lk/moodle/course/view.php?id=620',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height:
                            230, // Increased height for better image coverage
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Center text vertically
                          children: [
                            SizedBox(
                              height:
                                  170, // Adjust the height as needed for the image
                              width: double
                                  .infinity, // Make the image take full width
                              child: Image.network(
                                'https://pastpapers.wiki/wp-content/uploads/2021/06/6-13.jpg', // Replace with your image URL
                                fit: BoxFit
                                    .cover, // Ensure the image fully covers the button
                              ),
                            ),
                            const SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            const Text(
                              'ICT - Grade 10',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                              textAlign: TextAlign
                                  .center, // Center the text horizontally
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WebViewApp(
                              webUrl:
                                  'https://www.e-thaksalawa.moe.gov.lk/moodle/course/view.php?id=619',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height:
                            230, // Increased height for better image coverage
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Center text vertically
                          children: [
                            SizedBox(
                              height:
                                  170, // Adjust the height as needed for the image
                              width: double
                                  .infinity, // Make the image take full width
                              child: Image.network(
                                'https://pastpapers.wiki/wp-content/uploads/2021/06/1-50.jpg', // Replace with your image URL
                                fit: BoxFit
                                    .cover, // Ensure the image fully covers the button
                              ),
                            ),
                            const SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            const Text(
                              'Business Studies- Grade 10',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                              textAlign: TextAlign
                                  .center, // Center the text horizontally
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WebViewApp(
                              webUrl:
                                  'https://www.e-thaksalawa.moe.gov.lk/moodle/course/view.php?id=616',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height:
                            230, // Increased height for better image coverage
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Center text vertically
                          children: [
                            SizedBox(
                              height:
                                  170, // Adjust the height as needed for the image
                              width: double
                                  .infinity, // Make the image take full width
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxzj3hxdJk-1UwYeTFKIb5calglhRNZDwqYzZtGgQOHIGGpieC2jLOheGw7EIfu9RK07I&usqp=CAU', // Replace with your image URL
                                fit: BoxFit
                                    .cover, // Ensure the image fully covers the button
                              ),
                            ),
                            const SizedBox(
                                height:
                                    10), // Add spacing between image and text
                            const Text(
                              'Histoy - Grade 10',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                              textAlign: TextAlign
                                  .center, // Center the text horizontally
                            ),
                          ],
                        ),
                      ),
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
      backgroundColor: const Color(0xFFF6F2F2),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 156, 217, 243),
        leading: IconButton(
          color: const Color.fromARGB(255, 0, 0, 0),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ReadScreen()));
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

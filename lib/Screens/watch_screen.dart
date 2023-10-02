import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/help_screen.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';
import 'package:flutter_application_1/Screens/notes_screen.dart';
import 'package:flutter_application_1/Screens/profile_screen.dart';
import 'package:video_player/video_player.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class WatchScreen extends StatefulWidget {
  const WatchScreen({Key? key}) : super(key: key);

  @override
  _WatchScreenState createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
    )..initialize().then((_) {
        setState(() {});
      });
  }

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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 160.0, top: 5.0),
            child: SizedBox(
              height: 70, // Adjust the height as needed
              width: 90, // Adjust the width as needed
              child: Image.network(
                'https://cdn.dribbble.com/userupload/10117350/file/original-b2055516aa4e3d554736958e6e1aa365.png?resize=400x240',
                // Replace with your image URL
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
                  'Watch',
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
                      height: 230,
                      color: Colors.white,
                      child: AspectRatio(
                        aspectRatio:
                            16 / 9, // You can adjust the aspect ratio as needed
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const VideoApp(
                                  videoUrl:
                                      'https://dl135.dlmate68.xyz/?file=M3R4SUNiN3JsOHJ6WWQ2a3NQS1Y5ZGlxVlZIOCtyZ051K0Z4NEFJaUJhNGQ5OFlhMmUyMGNZSUVaZXc4NmFhQldwVms5Q3pNT29HMFoxM1pwdFlyVWlmSDhkOHh2QURmOHBvb0JJd2pjQS8zanZLMmxEUXoyeUg0Ym95SVI1NEhLQ1ZkbFdKTmhRT1F3ZWZZckUzSDVDLzl0d09PZkhCTXRUNEVZTm43dDVwUXhXRFphdVB0M3BWWS9IREd0TXNSanFqRTQwZmwxZTg2dW8waw%3D%3D',
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
                                      185, // Adjust the height as needed for the image
                                  width: double
                                      .infinity, // Make the image take full width
                                  child: Image.network(
                                    'https://i.ytimg.com/vi/kZLj7ZW_XXM/mqdefault.jpg', // Replace with your image URL
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
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign
                                      .center, // Center the text horizontally
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: Container(
                      height: 230,
                      color: Colors.white,
                      child: AspectRatio(
                        aspectRatio:
                            16 / 9, // You can adjust the aspect ratio as needed
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoApp(
                                  videoUrl:
                                      'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
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
                                    'https://i.ytimg.com/vi/RAGnDFbxF10/0.jpg', // Replace with your image URL
                                    fit: BoxFit
                                        .cover, // Ensure the image fully covers the button
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        10), // Add spacing between image and text
                                const Text(
                                  'Maths - Grade 11',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign
                                      .center, // Center the text horizontally
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: Container(
                      height: 230,
                      color: Colors.white,
                      child: AspectRatio(
                        aspectRatio:
                            16 / 9, // You can adjust the aspect ratio as needed
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoApp(
                                  videoUrl:
                                      'https://rr2---sn-4g5ednse.googlevideo.com/videoplayback?expire=1696203491&ei=g64ZZeOIBbrD6dsPmN6QuA8&ip=2a01%3A4f8%3A242%3A449c%3A%3A2&id=o-APWQhY8BUJTVPPcH4SHlQ5a6zcbLBaBwdbpWnqZLZoat&itag=22&source=youtube&requiressl=yes&mh=Iz&mm=31%2C29&mn=sn-4g5ednse%2Csn-4g5lznek&ms=au%2Crdu&mv=m&mvi=2&pl=53&initcwndbps=432500&spc=UWF9f9uekQcnuaYPeuAcsRFESGL2L7M&vprv=1&svpuc=1&mime=video%2Fmp4&cnr=14&ratebypass=yes&dur=9709.331&lmt=1588799481149155&mt=1696181375&fvip=4&fexp=24007246&beids=24350018&c=ANDROID&txp=5316222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAPzSBtpSIovtN0cL-heiY6qMDDDmNMsMtoY8hv1ZnAZkAiAVbD7gvIMRLIA5WY_h2E3nlQAXX63AoWxgGvQZGDxIPA%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOZkOETQIpexCHtk_4vfLwVGFDreJK39QA8jg0SyS3hiAiATL5CYTNcGvDfBjMIDMzLJV7-B1JrAz5wHJbtK0wEg8w%3D%3D&title=Lesson+1.+Perimeter+%7C++Maths+Session+for+Grade+10+%23DPEducation+%23Grade10Maths+%23perimeter',
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
                                      180, // Adjust the height as needed for the image
                                  width: double
                                      .infinity, // Make the image take full width
                                  child: Image.network(
                                    'https://i.ytimg.com/vi/jLfAK8slPZc/0.jpg', //  image URL
                                    fit: BoxFit
                                        .cover, // Ensure the image fully covers the button
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        10), // Add spacing between image and text
                                const Text(
                                  'Maths - Grade 10',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign
                                      .center, // Center the text horizontally
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
                    child: Container(
                      height: 230,
                      color: Colors.white,
                      child: AspectRatio(
                        aspectRatio:
                            16 / 9, // You can adjust the aspect ratio as needed
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoApp(
                                  videoUrl:
                                      'https://dl244.dlmate14.online/?file=M3R4SUNiN3JsOHJ6WWQ2a3NQS1Y5ZGlxVlZIOCtyZ051K0Z4NEFJaUJhNEg5OTFrOHVxbkw4QmNKdXdpeUk2ckJOTWYxamJaWWNTT0lrVFkvZE1XUTJHVnZJZDJrREhKL0p3dFdOMTRXUml6bXVpbjNSSjVoQXJnY05IT0ZLeGZZbmt3bDBWZzJ5aWN3UDdUb0NxcjVTMjk2VUNUT0dJTXV6Y09BdVhSNVpjVmtEdnRkdmp4eDRVSHFHUE54SmRaanJYUGtsR3prWlFXdHRoYWRGNVFZN2xMNEtXbWlhRGM2MG9KMU44YjMwTDVoY25nQTRZbEZiZWJiVDU5TzM5WXY3YTVEVU5MbVhaR3ZuK29xNnNudUE9PQ%3D%3D',
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
                                      180, // Adjust the height as needed for the image
                                  width: double
                                      .infinity, // Make the image take full width
                                  child: Image.network(
                                    'https://i.ytimg.com/vi/HndOJzDpIvY/0.jpg', //  image URL
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
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign
                                      .center, // Center the text horizontally
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
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

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class VideoApp extends StatefulWidget {
  final String videoUrl;
  const VideoApp({super.key, required this.videoUrl});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 156, 217, 243),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: const Text('EduCenter Video Player',
            style: TextStyle(
              fontFamily: 'Inter',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 156, 217, 243),
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow_sharp,
          color: Colors.black,
          size: 35,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

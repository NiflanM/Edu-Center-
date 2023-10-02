import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/addnotes_screen.dart';
import 'package:flutter_application_1/Screens/help_screen.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';
import 'package:flutter_application_1/Models/note_model.dart';
import 'package:flutter_application_1/Screens/profile_screen.dart';
import 'package:flutter_application_1/Services/DatabaseService.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../Utils/helper.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<Note> noteList = List.empty(growable: true);
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      loadNotes();
    });
  }

  bool _iconBool = false;

  ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
  );
  ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(backgroundColor: Colors.white),
  );

  IconData _iconLight = Icons.wb_sunny;
  IconData _iconDark = Icons.nights_stay;

  List<Note> notes = List.empty(growable: true);

  int _currentIndex = 1; // Current selected index for the bottom navigation bar

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
    return MaterialApp(
      theme: _iconBool ? _darkTheme : _lightTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          backgroundColor: _iconBool
              ? Colors.black
              : const Color.fromARGB(255, 156, 217, 243),
          leading: IconButton(
            color:
                _iconBool ? Colors.white : const Color.fromARGB(255, 0, 0, 0),
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _iconBool = !_iconBool;
                });
              },
              icon: Icon(_iconBool ? _iconLight : _iconDark),
            ),
          ],
          title: Center(
            child: SizedBox(
              height: 70,
              width: 80,
              child: Image.network(
                "https://cdn.dribbble.com/userupload/10117350/file/original-b2055516aa4e3d554736958e6e1aa365.png?resize=400x240",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30, right: 200),
              child: Text(
                'My Notes',
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: noteList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            noteList[index].title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            noteList[index].notes,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                            // maxLines: 1,
                            // overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(
              255, 156, 217, 243), // Set the background color to blue
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      AddnotesScreen(onNewNoteCreated: onNewNoteCreated)),
            );
          },
          child: const Icon(
            Icons.add,
            size: 35,
            color: Colors.black,
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
      ),
    );
  }

  void onNewNoteCreated(Note note) {
    //notes.add(note);
    setState(() {});
  }

  void onNoteDelete(int index) {
    notes.removeAt(index);
    setState(() {});
  }

  Future<void> loadNotes() async {
    final notes = await DatabaseService().getNotes(Helper.getEmail());

    setState(() {
      noteList = notes;
    });
  }
}

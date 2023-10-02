import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/note_model.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';
import 'package:flutter_application_1/Services/DatabaseService.dart';
import 'package:flutter_application_1/Utils/helper.dart';

class AddnotesScreen extends StatefulWidget {
  const AddnotesScreen({Key? key, required this.onNewNoteCreated})
      : super(key: key);

  final Function(Note) onNewNoteCreated;

  @override
  _AddnotesScreenState createState() => _AddnotesScreenState();
}

class _AddnotesScreenState extends State<AddnotesScreen> {
  bool _iconBool = false;

  ThemeData _lightTheme = ThemeData(
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

  final titleController = TextEditingController();
  final notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDarkMode = _iconBool;

    return MaterialApp(
      theme: isDarkMode ? _darkTheme : _lightTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: isDarkMode
              ? Colors.black
              : const Color.fromARGB(255, 156, 217, 243),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _iconBool = !_iconBool;
                });
              },
              icon: Icon(isDarkMode ? _iconLight : _iconDark),
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
        body: Container(
          color: const Color.fromARGB(153, 238, 238, 238),
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 15),
            child: Column(
              children: [
                TextFormField(
                  controller: titleController,
                  style: const TextStyle(
                    fontSize: 40,
                    fontFamily: 'Inter',
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Title',
                    hintStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(185, 0, 0, 0),
                    ),
                  ),
                ),
                TextFormField(
                  controller: notesController,
                  style: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'Inter',
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Add your notes here',
                    hintStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(185, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: isDarkMode
              ? const Color.fromARGB(255, 156, 217, 243)
              : const Color.fromARGB(255, 156, 217, 243),
          onPressed: () {
            if (titleController.text.isEmpty) {
              return;
            }
            if (notesController.text.isEmpty) {
              return;
            }
            final note = Note(
                notes: notesController.text,
                title: titleController.text,
                email: Helper.getEmail());
            DatabaseService().addNote(note);
            widget.onNewNoteCreated(note);
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.save,
            color: isDarkMode ? Colors.black : Colors.black,
          ),
        ),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../Models/note_model.dart';

class DatabaseService {
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> addNote(Note note) async {
    try {
      CollectionReference notes =
          FirebaseFirestore.instance.collection('notes');
      // Call the user's CollectionReference to add a new user
      await notes
          .doc()
          .set({'title': note.title, 'notes': note.notes, 'email': note.email});
      return 'success';
    } catch (e) {
      return 'Error adding user';
    }
  }

  Future<List<Note>> getNotes(String email) async {
    try {
      List<Note> noteList = List.empty(growable: true);
      QuerySnapshot notes =
          await FirebaseFirestore.instance.collection('notes').get();

      dynamic noteSnap = notes.docs.map((e) => e.data()).toList();
      for (var i = 0; i < noteSnap.length; i++) {
        noteList.add(Note(
            title: noteSnap[i]['title'].toString(),
            notes: noteSnap[i]['notes'].toString(),
            email: noteSnap[i]['email'].toString()));
      }
      return noteList;
    } catch (e) {
      return [];
    }
  }
}

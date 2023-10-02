import 'package:firebase_auth/firebase_auth.dart';

class Helper {
  static dynamic getEmail() {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    User? user = _auth.currentUser;
    return user?.email;
  }
}

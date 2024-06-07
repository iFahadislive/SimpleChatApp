import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  //Instance of Auth

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // SignIn
  Future<UserCredential> signInWithEmailPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

//SignUp

// SignOut

//ForgotPassword

//errors
}

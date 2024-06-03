import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign in anonymously
  Future<User?> signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } on FirebaseAuthException catch (e) {
      print('Error: ${e.message}');
      return null;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

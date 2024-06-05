import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import '../models/user.dart';
import '../models/route.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;

  // Add User
  Future<void> addUser(User user) {
    return _db.collection('users').doc(user.idUser).set(user.toJson());
  }

  // Add Route
  Future<void> addRoute(Route route) {
    return _db.collection('routes').doc(route.idRoute).set(route.toJson());
  }

  // Get User by ID
  Future<User> getUser(String idUser) async {
    DocumentSnapshot doc = await _db.collection('users').doc(idUser).get();
    return User.fromJson(doc.data() as Map<String, dynamic>);
  }

  // Get Route by ID
  Future<Route> getRoute(String idRoute) async {
    DocumentSnapshot doc = await _db.collection('routes').doc(idRoute).get();
    return Route.fromJson(doc.data() as Map<String, dynamic>);
  }

  // Update User
  Future<void> updateUser(User user) {
    return _db.collection('users').doc(user.idUser).update(user.toJson());
  }

  // Update Route
  Future<void> updateRoute(Route route) {
    return _db.collection('routes').doc(route.idRoute).update(route.toJson());
  }

  // Delete User
  Future<void> deleteUser(String idUser) {
    return _db.collection('users').doc(idUser).delete();
  }

  // Delete Route
  Future<void> deleteRoute(String idRoute) {
    return _db.collection('routes').doc(idRoute).delete();
  }

  // Sign Up
  Future<auth.User?> signUp(String email, String password) async {
    try {
      auth.UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign In
  Future<auth.User?> signIn(String email, String password) async {
    try {
      auth.UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign Out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Get Current User
  auth.User? getCurrentUser() {
    return _auth.currentUser;
  }
}

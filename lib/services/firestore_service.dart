import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:firebase_auth/firebase_auth.dart' as auth;
import '../models/user.dart';
import '../models/route.dart';
import '../models/order.dart';
import '../models/product.dart';
import '../models/delivery.dart';
import '../models/driver.dart';
import '../models/vehicle.dart';
import '../models/company.dart';
import '../models/payment.dart';
import '../models/address.dart';
class FirestoreService {
  final firestore.FirebaseFirestore _db = firestore.FirebaseFirestore.instance;
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;

  // Add User
  Future<void> addUser(User user) {
    return _db.collection('users').doc(user.idUser).set(user.toJson());
  }

  // Get User by ID
  Future<User> getUser(String idUser) async {
    firestore.DocumentSnapshot doc = await _db.collection('users').doc(idUser).get();
    return User.fromJson(doc.data() as Map<String, dynamic>);
  }

  // Update User
  Future<void> updateUser(User user) {
    return _db.collection('users').doc(user.idUser).update(user.toJson());
  }

  // Delete User
  Future<void> deleteUser(String idUser) {
    return _db.collection('users').doc(idUser).delete();
  }

  // Add Route
  Future<void> addRoute(Route route) {
    return _db.collection('routes').doc(route.idRoute).set(route.toJson());
  }

  // Get Route by ID
  Future<Route> getRoute(String idRoute) async {
    firestore.DocumentSnapshot doc = await _db.collection('routes').doc(idRoute).get();
    return Route.fromJson(doc.data() as Map<String, dynamic>);
  }

  // Update Route
  Future<void> updateRoute(Route route) {
    return _db.collection('routes').doc(route.idRoute).update(route.toJson());
  }

  // Delete Route
  Future<void> deleteRoute(String idRoute) {
    return _db.collection('routes').doc(idRoute).delete();
  }

  // Add Order
  Future<void> addOrder(Order order) {
    return _db.collection('orders').doc(order.idOrder).set(order.toJson());
  }

  // Get Order by ID
  Future<Order> getOrder(String idOrder) async {
    firestore.DocumentSnapshot doc = await _db.collection('orders').doc(idOrder).get();
    return Order.fromJson(doc.data() as Map<String, dynamic>);
  }

  // Update Order
  Future<void> updateOrder(Order order) {
    return _db.collection('orders').doc(order.idOrder).update(order.toJson());
  }

  // Delete Order
  Future<void> deleteOrder(String idOrder) {
    return _db.collection('orders').doc(idOrder).delete();
  }

  // Add Product
  Future<void> addProduct(Product product) {
    return _db.collection('products').doc(product.idProduct).set(product.toJson());
  }

  // Get Product by ID
  Future<Product> getProduct(String idProduct) async {
    firestore.DocumentSnapshot doc = await _db.collection('products').doc(idProduct).get();
    return Product.fromJson(doc.data() as Map<String, dynamic>);
  }

  // Update Product
  Future<void> updateProduct(Product product) {
    return _db.collection('products').doc(product.idProduct).update(product.toJson());
  }

  // Delete Product
  Future<void> deleteProduct(String idProduct) {
    return _db.collection('products').doc(idProduct).delete();
  }

  // Add Delivery
  Future<void> addDelivery(Delivery delivery) {
    return _db.collection('deliveries').doc(delivery.idDelivery).set(delivery.toJson());
  }

  // Get Delivery by ID
  Future<Delivery> getDelivery(String idDelivery) async {
    firestore.DocumentSnapshot doc = await _db.collection('deliveries').doc(idDelivery).get();
    return Delivery.fromJson(doc.data() as Map<String, dynamic>);
  }

  // Update Delivery
  Future<void> updateDelivery(Delivery delivery) {
    return _db.collection('deliveries').doc(delivery.idDelivery).update(delivery.toJson());
  }

  // Delete Delivery
  Future<void> deleteDelivery(String idDelivery) {
    return _db.collection('deliveries').doc(idDelivery).delete();
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

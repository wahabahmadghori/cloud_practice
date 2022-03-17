import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';

class UserDb {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser(UserModel user) async {
    // Call the user's CollectionReference to add a new user
    await users.add(UserModel.toMap(user)).then((value) => print("User Added")).catchError((error) => print("Failed to add user: $error"));
  }

  Future<void> deleteUser({required userId}) async {
    await users.doc(userId).delete().then((value) => print("User Deleted")).catchError((error) => print("Failed to add user: $error"));
  }
}

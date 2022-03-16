import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/question_model.dart';

class QuestionDb {
  CollectionReference questions = FirebaseFirestore.instance.collection('questions');

  Future<void> addUser(QuestionModel user) async {
    // Call the user's CollectionReference to add a new user
    await questions.add(QuestionModel.toMap(user)).then((value) => print("Question Added")).catchError((error) => print("Failed to add user: $error"));
  }

  Future<void> deleteUser({required userId}) async {
    await questions.doc(userId).delete().then((value) => print("Question Deleted")).catchError((error) => print("Failed to add user: $error"));
  }
}

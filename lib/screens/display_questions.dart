import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add_question.dart';
import '../services/userdb.dart';
import '../widgets/question_card.dart';

class DisplayQuestions extends StatelessWidget {
  UserDb userDb = UserDb();
  @override
  Widget build(BuildContext context) {
    CollectionReference questions = FirebaseFirestore.instance.collection('questions');

    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
          stream: questions.snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            return ListView(
              shrinkWrap: true,
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                return QuestionCard(data: data);
              }).toList(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_context) => AddQuestion(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

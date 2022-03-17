import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add_question.dart';
import '../services/userdb.dart';
import '../widgets/question_card.dart';
import '../custom_shapes/quiz_shape.dart';

class DisplayQuestions extends StatefulWidget {
  @override
  _DisplayQuestionsState createState() => _DisplayQuestionsState();
}

class _DisplayQuestionsState extends State<DisplayQuestions> {
  UserDb userDb = UserDb();

  @override
  Widget build(BuildContext context) {
    CollectionReference questions = FirebaseFirestore.instance.collection('questions');

    return Scaffold(
      appBar: AppBar(
        title: Container(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomPaint(
              child: Container(
                width: 300,
                height: 200,
                color: Colors.amberAccent,
              ),
              foregroundPainter: QuizLogo(),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: questions.snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: const CircularProgressIndicator());
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
          ],
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

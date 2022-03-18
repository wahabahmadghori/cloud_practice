import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add_question.dart';
import '../services/userdb.dart';
import '../widgets/question_card.dart';
import '../widgets/quiz_title.dart';

class DisplayQuestions extends StatefulWidget {
  @override
  _DisplayQuestionsState createState() => _DisplayQuestionsState();
}

class _DisplayQuestionsState extends State<DisplayQuestions> {
  UserDb userDb = UserDb();

  @override
  Widget build(BuildContext context) {
    CollectionReference questions = FirebaseFirestore.instance.collection('questions');
    ScrollController _scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        title: Container(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              QuizTitle(),
              StreamBuilder<QuerySnapshot>(
                stream: questions.snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Something went wrong');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(height: MediaQuery.of(context).size.height, child: Center(child: const CircularProgressIndicator()));
                  }

                  return Scrollbar(
                    controller: _scrollController,
                    isAlwaysShown: true,
                    child: ListView(
                      shrinkWrap: true,
                      controller: _scrollController,
                      children: snapshot.data!.docs.map((DocumentSnapshot document) {
                        Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                        return QuestionCard(data: data);
                      }).toList(),
                    ),
                  );
                },
              ),
            ],
          ),
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

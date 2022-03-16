import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add_question.dart';
import '../services/userdb.dart';

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
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(8),
                        child: Text(data['question']),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: data['optionA'] == data['answer'] ? Colors.greenAccent : Colors.redAccent),
                        child: Text(data['optionA']),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: data['optionB'] == data['answer'] ? Colors.greenAccent : Colors.redAccent),
                        child: Text(data['optionB']),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: data['optionC'] == data['answer'] ? Colors.greenAccent : Colors.redAccent),
                        child: Text(data['optionC']),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: data['optionD'] == data['answer'] ? Colors.greenAccent : Colors.redAccent),
                        child: Text(data['optionD']),
                      ),
                    ]),
                  ),
                );
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

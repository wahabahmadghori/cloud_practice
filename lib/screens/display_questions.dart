import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add_user.dart';
import '../services/userdb.dart';

class DisplayUsers extends StatelessWidget {
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
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Card(
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text(data['question']),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: data['optionA'] == data['answer'] ? Colors.green : Colors.grey),
                        child: Text(data['optionA']),
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: data['optionA'] == data['answer'] ? Colors.green : Colors.grey),
                        child: Text(data['optionB']),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: data['optionA'] == data['answer'] ? Colors.green : Colors.grey),
                        child: Text(data['optionC']),
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: data['optionA'] == data['answer'] ? Colors.green : Colors.grey),
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
              builder: (_context) => AddUser(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add_user.dart';
import '../services/userdb.dart';

class DisplayUsers extends StatelessWidget {
  UserDb userDb = UserDb();
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
          stream: users.snapshots(),
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
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    trailing: IconButton(
                        onPressed: () {
                          userDb.deleteUser(userId: document.id.toString());
                        },
                        icon: Icon(Icons.delete)), //show index number
                    title: Center(child: Text(data['fullName'])),
                    subtitle: Text(data['company']),
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

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'models/user_model.dart';
import 'services/userdb.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    UserDb userDb = UserDb();
    var user = UserModel(fullName: "Yohan", age: 21, company: 'BSN');
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            userDb.addUser(user);
          },
          child: Text(
            'Hello, World!',
          ),
        ),
      ),
    );
  }
}

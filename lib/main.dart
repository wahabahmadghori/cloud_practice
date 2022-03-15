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

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    UserDb userDb = UserDb();
    TextEditingController _fullNameController = TextEditingController();
    TextEditingController _companyController = TextEditingController();
    TextEditingController _ageController = TextEditingController();
    bool isProcessing = false;
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _fullNameController,
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              focusColor: Colors.white,
              //add prefix icon
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: Colors.grey,
              ),

              errorText: "Error",

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,

              hintText: "FullName",

              //make hint text
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),

              //create lable
              labelText: 'Email/Mobile',
              //lable style
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _companyController,
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              focusColor: Colors.white,
              //add prefix icon
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: Colors.grey,
              ),

              errorText: "Error",

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,

              hintText: "FullName",

              //make hint text
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),

              //create lable
              labelText: 'Email/Mobile',
              //lable style
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _ageController,
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              focusColor: Colors.white,
              //add prefix icon
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: Colors.grey,
              ),

              errorText: "Error",

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,

              hintText: "FullName",

              //make hint text
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),

              //create lable
              labelText: 'Email/Mobile',
              //lable style
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          isProcessing
              ? CircularProgressIndicator()
              : ElevatedButton(
                  onPressed: () {
                    var user = UserModel(fullName: _fullNameController.text, age: int.parse(_ageController.text), company: _companyController.text);
                    setState(() {
                      isProcessing = true;
                    });
                    userDb.addUser(user);
                    isProcessing = false;
                  },
                  child: Text(
                    'SAVE',
                  ),
                ),
        ],
      ),
    );
  }
}

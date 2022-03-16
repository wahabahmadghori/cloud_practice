import 'package:flutter/material.dart';

class AddQuestion extends StatefulWidget {
  _AddQuestionState createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  TextEditingController _questionController = TextEditingController();
  TextEditingController _optionAController = TextEditingController();
  TextEditingController _optionBController = TextEditingController();
  TextEditingController _optionCController = TextEditingController();
  TextEditingController _optionDController = TextEditingController();
  TextEditingController _answerController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Add New Question',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

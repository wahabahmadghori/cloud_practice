import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../custom_shapes/correct_shape.dart';
import '../custom_shapes/wrong_shape.dart';
import 'option_inkWell.dart';

class QuestionCard extends StatefulWidget {
  final Map<String, dynamic> data;
  const QuestionCard({Key? key, required this.data}) : super(key: key);
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  int _quizAttempt = 0;
  bool _answerShow = false;
  List<bool> options = [
    false,
    false,
    false,
    false,
    false
  ];

  void QuizAttempt() {
    setState(() {
      _quizAttempt += 1;
      _answerShow = true;
      options[0] = widget.data['optionA'] == widget.data['answer'];
      options[1] = widget.data['optionB'] == widget.data['answer'];
      options[2] = widget.data['optionC'] == widget.data['answer'];
      options[3] = widget.data['optionD'] == widget.data['answer'];
    });
    //print(_quizAttempt);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.blue[50]!,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Flexible(
                flex: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    widget.data['question'],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: CustomPaint(
                  child: Container(
                    width: 28,
                    height: 28,
                  ),
                  painter: CorrectShapePainter(),
                ),
              ),
            ],
          ),
          OptionInkWell(
            option: widget.data['optionA'],
            answer: widget.data['answer'],
            onAttemptSelected: this.QuizAttempt,
            optionSelect: _quizAttempt,
            optionSelection: options,
            index: 0,
          ),
          OptionInkWell(
            option: widget.data['optionB'],
            answer: widget.data['answer'],
            onAttemptSelected: this.QuizAttempt,
            optionSelect: _quizAttempt,
            optionSelection: options,
            index: 1,
          ),
          OptionInkWell(
            option: widget.data['optionC'],
            answer: widget.data['answer'],
            onAttemptSelected: this.QuizAttempt,
            optionSelect: _quizAttempt,
            optionSelection: options,
            index: 2,
          ),
          OptionInkWell(
            option: widget.data['optionD'],
            answer: widget.data['answer'],
            onAttemptSelected: this.QuizAttempt,
            optionSelect: _quizAttempt,
            optionSelection: options,
            index: 3,
          ),
        ]),
      ),
    );
  }
}

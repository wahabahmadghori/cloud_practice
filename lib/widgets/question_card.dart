import 'package:flutter/material.dart';

import 'option_inkWell.dart';

class QuestionCard extends StatefulWidget {
  final Map<String, dynamic> data;
  const QuestionCard({Key? key, required this.data}) : super(key: key);
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  bool _isCorrect = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            child: Text(widget.data['question']),
          ),
          OptionInkWell(option: widget.data['optionA'], answer: widget.data['answer']),
          OptionInkWell(option: widget.data['optionB'], answer: widget.data['answer']),
          OptionInkWell(option: widget.data['optionC'], answer: widget.data['answer']),
          OptionInkWell(option: widget.data['optionD'], answer: widget.data['answer']),
        ]),
      ),
    );
    ;
  }
}

import 'package:flutter/material.dart';

class OptionInkWell extends StatefulWidget {
  final String option;
  final String answer;
  const OptionInkWell({Key? key, required this.option, required this.answer}) : super(key: key);
  _OptionInkWellState createState() => _OptionInkWellState();
}

class _OptionInkWellState extends State<OptionInkWell> {
  @override
  Widget build(BuildContext context) {
    bool _isCorrect = false;
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.red)))),
        onPressed: () {
          _isCorrect = widget.option == widget.answer;
        },
        child: Text(widget.option),
      ),
    );
  }
}

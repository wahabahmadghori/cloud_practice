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
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: _isCorrect ? Colors.greenAccent : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.red),
          ),
        ),
        onPressed: () {
          setState(() {
            _isCorrect = widget.option == widget.answer;
          });
        },
        child: Text(
          widget.option,
          style: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}

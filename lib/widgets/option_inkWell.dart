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
    return InkWell(
      onTap: () {
        _isCorrect = widget.option == widget.answer;
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: widget.option == widget.answer ? Colors.greenAccent : Colors.white),
        child: Text(widget.option),
      ),
    );
  }
}

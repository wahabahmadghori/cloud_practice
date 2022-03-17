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
    Color optionColor = Colors.white;
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: optionColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.red),
          ),
        ),
        onPressed: () {
          if (widget.option == widget.answer) {
            setState(() {
              optionColor = Colors.greenAccent;
            });
          } else {
            setState(() {
              optionColor = Colors.pinkAccent;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.option,
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ),
    );
  }
}

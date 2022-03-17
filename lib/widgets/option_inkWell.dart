import 'package:flutter/material.dart';

class OptionInkWell extends StatefulWidget {
  final String option;
  final String answer;
  final VoidCallback onAttemptSelected;
  final int optionSelect;
  const OptionInkWell({Key? key, required this.option, required this.answer, required this.onAttemptSelected, required this.optionSelect}) : super(key: key);
  _OptionInkWellState createState() => _OptionInkWellState();
}

class _OptionInkWellState extends State<OptionInkWell> {
  Color _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onAttemptSelected();
        if (widget.optionSelect > 0) return;
        if (widget.option == widget.answer) {
          setState(() {
            _color = Colors.greenAccent;
          });
        } else {
          setState(() {
            _color = Colors.pink[100]!;
          });
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: _color),
        child: Text(widget.option),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OptionInkWell extends StatefulWidget {
  final String option;
  final String answer;
  final VoidCallback onAttemptSelected;
  const OptionInkWell({Key? key, required this.option, required this.answer, required this.onAttemptSelected}) : super(key: key);
  _OptionInkWellState createState() => _OptionInkWellState();
}

class _OptionInkWellState extends State<OptionInkWell> {
  Color _color = Colors.white;
  int _optionSelect = 0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onAttemptSelected();
        if (_optionSelect < 1) return;
        _optionSelect += 1;
        print(_optionSelect);
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

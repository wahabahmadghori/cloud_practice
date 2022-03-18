import 'package:flutter/material.dart';

class OptionInkWell extends StatefulWidget {
  final String option;
  final String answer;
  final VoidCallback onAttemptSelected;

  final List<bool> optionSelection;
  final int optionSelect;
  final int index;
  const OptionInkWell({Key? key, required this.option, required this.answer, required this.onAttemptSelected, required this.optionSelection, required this.index, required this.optionSelect}) : super(key: key);
  _OptionInkWellState createState() => _OptionInkWellState();
}

class _OptionInkWellState extends State<OptionInkWell> {
  Color _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.optionSelect > 0) return;

        if (widget.option == widget.answer) {
          setState(() {
            _color = Colors.greenAccent;
            widget.optionSelection[4] = true;
          });
        } else {
          setState(() {
            _color = Colors.pink[100]!;
            widget.optionSelection[4] = false;
          });
        }

        Future.delayed(Duration(milliseconds: 500), () {
          widget.onAttemptSelected();
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: widget.optionSelection[widget.index] ? Colors.greenAccent : _color),
        child: Text(widget.option),
      ),
    );
  }
}

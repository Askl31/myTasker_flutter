import 'package:flutter/material.dart';

class RoundedCheckbox extends StatefulWidget {
  const RoundedCheckbox({this.value, this.onChanged});

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  _RoundedCheckboxState createState() => _RoundedCheckboxState();
}

class _RoundedCheckboxState extends State<RoundedCheckbox> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _value = !_value;
        });
      },
      child: Container(
        decoration: _value
            ? BoxDecoration(shape: BoxShape.circle, color: Colors.blue)
            : BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: Color(0xFFDADADA))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _value
              ? Icon(
                  Icons.check,
                  size: 14.0,
                  color: Colors.white,
                )
              : Icon(
                  Icons.check_box_outline_blank,
                  size: 14.0,
                  color: Colors.white,
                ),
        ),
      ),
    );
  }
}

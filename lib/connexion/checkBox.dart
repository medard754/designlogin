import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  final String textCheck;
  const CheckBox(this.textCheck);
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              child: Container(
                  height:18,
                  width:18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.lightBlueAccent)),
                  child: _isSelected
                  ? Icon(
                    Icons.check,
                    size:17,
                    color:Colors.blue
                  ):null,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              widget.textCheck,
              style:TextStyle(
                fontWeight:FontWeight.w600,
                fontSize:15,
                color:Colors.blue,           
              ),
            )
          ],
        )
      ],
    );
  }
}

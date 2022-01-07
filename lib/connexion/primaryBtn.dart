

import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
   PrimaryButton({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Center(
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.blue),
        child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18)),
      ),
    ));
  }
}

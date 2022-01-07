import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  InputForm({Key? key}) : super(key: key);

  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  bool _isObscure = true;
  Null icn;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm("Phone", false,Icon(Icons.phone)),
        buildInputForm("Email", false,Icon(Icons.mail)),
        buildInputForm("Password", true,Icon(Icons.vpn_key)),
        buildInputForm("Confirm_Password", true,Icon(Icons.vpn_key)),
      ],
    );
  }

  Padding buildInputForm(String valuelabel, bool pass,Icon icn) {
    return Padding(
      padding: const EdgeInsets.only(left:15, right: 15),
      child: TextFormField(
        obscureText: pass ? _isObscure : false,
        decoration: InputDecoration(
            labelText: valuelabel,
            prefixIcon:icn,
            labelStyle: TextStyle(color: Colors.black38),
            focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)),
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: _isObscure
                        ? Icon(Icons.visibility_off, color: Colors.blueAccent)
                        : Icon(Icons.visibility, color: Colors.black54))
                : null),
      ),
    );
  }
}

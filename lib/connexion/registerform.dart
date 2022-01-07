

import 'package:designlogin/connexion/FormRegister.dart';
import 'package:designlogin/connexion/home.dart';
import 'package:designlogin/connexion/login.dart';
import 'package:designlogin/connexion/primaryBtn.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [
            
         SizedBox(height:100,),
          new Center(
           
              child: Padding(
                padding:const EdgeInsets.only(left: 20.0,right: 20.0,),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                       SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding:const EdgeInsets.only(left:15),
                    child: Text(
                    "Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize:30),
                  ),
                  ),
                  SizedBox(
                    height:50,
                  ),
                  InputForm(),
                SizedBox(height:35,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Disponible()));
                  },
                  child: PrimaryButton(
                    text: 'Sign Up',
                  ),
                ),
                   SizedBox(
                    height:50,
                  ),
                
                 
                    SizedBox(
                      height:65,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:75,top:25),
                      child: Row(
                      children: [
                        
                        Center(
                          child: Text(
                            "Already have an account",
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => LoginPage() ));
                          },
                          child: Text("Sign In",
                              style:
                                  TextStyle(
                                    fontSize: 16, 
                                    fontWeight: FontWeight.bold,
                                    decoration:TextDecoration.underline,
                                    color:Colors.blue)),
                        ),
                      ],
                  ),
                    ),
                  
                  ],
                ),
                )
        ,
          ),
      
          ],
          ) );
  }
}
import 'dart:ui';

import 'package:designlogin/connexion/checkBox.dart';
import 'package:designlogin/connexion/home.dart';
import 'package:designlogin/connexion/loginForm.dart';
import 'package:designlogin/connexion/primaryBtn.dart';
import 'package:designlogin/connexion/registerform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize:30),
                  ),
                  ),
                  SizedBox(
                    height:50,
                  ),
                  InputForm(),
                  SizedBox(height:25,),
                  Row(
                    children: [
                      CheckBox(
                        "Remember me",                   
                      ),
                      Spacer(
                        flex:2,
                      ),
                      Text(
                        "Forgot Password?",
                        style:TextStyle(
                          color:Colors.red,
                          fontSize:15,
                          decoration:TextDecoration.underline
                        ),
                      )
                    ],
                  ),
                SizedBox(height:35,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Disponible()));
                  },
                  child: PrimaryButton(
                    text: 'Log in witch your account',
                  ),
                ),
                   SizedBox(
                    height:50,
                  ),
                  Text(
                    "Or log in with.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:const EdgeInsets.only(left:10,right:10 ),
                    child:Row(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        Container(
                          width:150,
                          height:40,
                          decoration:BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(7) 
                          ),
                          child: Center(
                            child:Text(
                              "Faceboock",
                              style: TextStyle(
                                fontSize:15,
                                color:Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ),
                        Spacer(
                          flex:1,
                        ),
                        Container(
                          width:150,
                          height:40,
                          decoration:BoxDecoration(
                            color: Colors.red, 
                            borderRadius: BorderRadius.circular(7)   
                          ),
                          child: Center(
                            child: Text(
                              "G+ Google",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:15,
                                color:Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ),
                      ],
                    ),
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
                            "Don't have an account?",
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => RegisterForm()));
                          },
                          child: Text("Sign Up",
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


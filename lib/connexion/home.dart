
import 'package:designlogin/connexion/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Disponible extends StatefulWidget {
  Disponible({Key? key}) : super(key: key);

  @override
  _DisponibleState createState() => _DisponibleState();
}

class _DisponibleState extends State<Disponible> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async {
    await Future.delayed(Duration(milliseconds:5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
       child: Container(
         height:300,
         width:300,
        child:Column(
        children: [
         /* Center(
            child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("assets/info1.jpg",width:100,height:100,),
          ),
          ),*/
          SizedBox(height:15,),
          Center(
            child:Text(
              "Page bientôt disponible",
              style:TextStyle(
                fontSize: 20
              ),

            ),
          ),
          SizedBox(height:25,),
          Center(
            child:LinearProgressIndicator(
                backgroundColor:Colors.red.withOpacity(0.6),
                valueColor:AlwaysStoppedAnimation(Colors.blue),
             
            ),
          )
        ],
      ),
       ),
      )
    );
  }
}
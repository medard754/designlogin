import 'package:designlogin/connexion/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    _navigatohome();
  }

  _navigatohome() async{
    await Future.delayed(Duration(milliseconds:8000), () {});
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 150,
        height: 150,
        child: Column(
          children: [
            Center(
              child: Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      "W",
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "International Coorporation",
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 12),
            )
          ],
        ),
      ),
    ));
  }
}
 /*


 Container(
        width:75,
        height:75,
        decoration: BoxDecoration(
          color:Colors.blue,
          borderRadius:BorderRadius.circular(15)
        ),
        child:Center(
          child:Text(
          "W",
          style: TextStyle(
              fontSize:80,
              fontWeight: FontWeight.bold,
              
              color: Colors.white),
        ),
        )
      ),
        Text(
          "International Coorporation",
          style: TextStyle(
              color: Colors.cyanAccent.withOpacity(0.5), fontSize: 12),
        )*/
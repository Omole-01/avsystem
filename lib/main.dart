import 'package:avsystem/qrscanner/qrscanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splashscreen(),
    );
  }
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Splashbody(),
    );
  }
}

class Splashbody extends StatefulWidget {
  const Splashbody({Key? key}) : super(key: key);

  @override
  _SplashbodyState createState() => _SplashbodyState();
}

class _SplashbodyState extends State<Splashbody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: Color(0xff003391),
          child: Column(
            children: [
              Expanded(flex: 3,
                  child: Container(color: Color(0xff003391),
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Container(height: 270,
              width: 270,
              child: SvgPicture.asset("images/faceid.svg")),
          SizedBox(height: 5,),
          Text("Attendance Verification System",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          Center( child: Text("(AVS)",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white),),)
        ],
      ),)),
              Expanded(flex: 1,
                  child: Container(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                  )
              ),
              width: double.infinity,
              child: Center(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(20,0,20,0),
                  child: FlatButton(
                    splashColor: Colors.blue,
                    color: Color(0xff003391),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: Text("Next",
                      style: TextStyle(
                        color: Colors.white,
                          fontWeight: FontWeight.bold,
                      fontSize: 25),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHome()),
                      );
                    },
                  ),
                ),
              )))

            ],

          )
        )
      ],
    );
  }
}

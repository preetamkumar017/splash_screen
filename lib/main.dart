import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/SecondScreen.dart';
import 'package:splash_screen/home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   bool islogin = false;
  @override
  Widget build(BuildContext context) {

    _check();


    return MaterialApp(
      routes: {
        '/secondpage':(context)=>SecondScreen(),
        '/home':(context)=>Home(),
      },
      home: SplashScreenView(
        navigateRoute: islogin?SecondScreen():Home(),
        duration: 5000,
        imageSize: 130,
        // imageSrc: "logo.png",
        text: "Splash Screen",
        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
          fontSize: 40.0,
        ),
        colors: [
          Colors.purple,
          Colors.blue,
          Colors.yellow,
          Colors.red,
        ],
        backgroundColor: Colors.white,
      ),
    );
  }

  _check() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState((){
      islogin = prefs.getBool("islogin")!;
      // print(islogin.toString());
    });



  }

}



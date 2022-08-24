import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/SecondScreen.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Add data"),
          onPressed: () async {

            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setBool("islogin", true);
            Navigator.pushReplacementNamed(context,'/secondpage' );

          },
        ),
      ),
    );
  }
}

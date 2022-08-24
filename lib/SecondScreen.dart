import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen/home.dart';
import 'package:splash_screen/main.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("delete data"),
          onPressed: () async {

            SharedPreferences prefs = await SharedPreferences.getInstance();

           await  prefs.clear();
           Navigator.pushReplacementNamed(context, '/home');

          },
        ),
      ),
    );
  }
}

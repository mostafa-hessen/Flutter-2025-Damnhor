import 'package:flutter/material.dart';
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    islogged();
  }

  Future islogged() async {
    var pref = await SharedPreferences.getInstance();
    var user = await pref.getString("userName");
    if (user!.isNotEmpty) {
      Future.delayed(Duration(seconds: 5), () {
        Navigator.of(context).pushReplacementNamed('/home');
      });
    } else {
      Future.delayed(Duration(seconds: 5), () {
        Navigator.of(context).pushReplacementNamed('/login');
      });
    }
  }

  // ["splach", "login"]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flutter_dash, size: 100, color: Colors.white),
            SizedBox(height: 20),
            Text(
              'Welcome to My App',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}

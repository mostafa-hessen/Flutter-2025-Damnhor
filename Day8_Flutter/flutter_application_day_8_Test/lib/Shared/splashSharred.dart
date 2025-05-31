import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPageSharred extends StatefulWidget {
  const SplashPageSharred({super.key});

  @override
  State<SplashPageSharred> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPageSharred> {
  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  Future<void> checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool loggedIn = prefs.getBool('loggedIn') ?? false;

    Future.delayed(Duration(seconds: 10), () {
      print("$loggedIn");
      if (loggedIn) {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        Navigator.pushReplacementNamed(context, '/login');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

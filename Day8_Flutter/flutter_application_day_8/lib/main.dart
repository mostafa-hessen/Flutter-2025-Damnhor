import 'package:flutter/material.dart';
import 'package:flutter_application_day_6/Pages/ContentPage.dart';
import 'package:flutter_application_day_6/Pages/HomePage.dart';
import 'package:flutter_application_day_6/Pages/LoginPage.dart';
import 'package:flutter_application_day_6/Pages/AboutPage.dart';
import 'package:flutter_application_day_6/Pages/Magazin.dart';
import 'package:flutter_application_day_6/Pages/ProductPage.dart';
import 'package:flutter_application_day_6/Pages/SplachScreen.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/':(context)=>Loginpage(),
        '/':(context)=>SplashScreen(),
        '/login':(context)=>Loginpage(),
        "/home":(context)=>HomePage(),
        "/about":(context)=>About(),
        // "/content":(context)=>Contentpage(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 185, 204, 218),
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
        textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 198, 188, 188),
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),

          titleMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.4,
          ),
        ),
      ),
      // home:Loginpage(),
    );
  }
}


// Navigatore
// let x =["Home", ]
/// push - pop -push repleacment- pushandRemoveuntil
///  home - about
/// 
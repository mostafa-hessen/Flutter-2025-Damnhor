import 'package:flutter/material.dart';
import 'package:flutter_application_day_6/Pages/HomePage.dart';
import 'package:flutter_application_day_6/Pages/LoginPage.dart';
import 'package:flutter_application_day_6/util/Common.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About"), centerTitle: true),

      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          color: const Color.fromARGB(255, 255, 152, 145),
          width: 500,
          height: 260,
          alignment: Alignment.center,
          child: Column(
            children: [
              Text("About Page", style: Theme.of(context).textTheme.titleLarge),

              Gap(),
              MaterialButton(
                color: Colors.blue,

                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  "go to Home",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),

              MaterialButton(
                color: Colors.blue,

                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Loginpage()),
                    ( route) => false

                  );
                },
                child: Text(
                  "Log Out ",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//  [Loginpage]
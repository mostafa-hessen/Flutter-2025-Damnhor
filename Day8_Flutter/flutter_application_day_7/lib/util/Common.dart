
import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  double heigth;
  double width;

  Gap([this.heigth = 30, this.width = 0]);

  Widget build(BuildContext context) {
    return SizedBox(height: heigth, width: width);
  }
}

class Shap extends StatelessWidget {
  double width;
  double heigth;
  Color color = Color(0xFF408DC5);
  Widget? widget;

  Shap({this.width = 50, this.heigth = 50, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10 ),
      width: this.width,
      height: this.heigth,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget,
    );
  }
}


class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
        Container(
          child: Column(
            children: [
              Gap(),
              Card(
                elevation: 10,
                
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.app_shortcut_rounded),
                  title: Text("Mostafa hussien"),
                  subtitle: Text("backend dev"),
                  trailing: Icon(Icons.call),
                ),
              ),
          

           
             
            
            ],
          ),
        ),
      ),
    );
  }
}

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: "ds", icon: Icon(Icons.add)),
          BottomNavigationBarItem(label: "ds", icon: Icon(Icons.plus_one)),
        ],
      ),
      body: Text(""),
    );
  }

  // Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')
}

class ExpnadedTech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('')),
                ),

                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(width: 100, height: 100, color: Colors.green),
            ),
            Expanded(
              child: Container(width: 100, height: 100, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}



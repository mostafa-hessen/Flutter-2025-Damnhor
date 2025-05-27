import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// stateless vs statefull
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back, color: Colors.white),
          title: Text("flutter تطبيق ", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blueAccent[400],
        ),
        body: Center(
          child:  Column(
            children: [
              Text("اهلا بك في فلاتر"),
              Icon(Icons.ac_unit_outlined),
              Container(
                alignment: Alignment.topLeft,
                width: 100,
                height: 100,
                                color: Colors.green,
                child: Text("data"),
              ),
            ],
          ),
        )
      ),
    );
  }
}

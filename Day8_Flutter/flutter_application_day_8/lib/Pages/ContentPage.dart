import 'package:flutter/material.dart';
import 'package:flutter_application_day_6/util/Common.dart';

class Contentpage extends StatefulWidget {
  const Contentpage({super.key});

  @override
  State<Contentpage> createState() => _ContentpageState();
}

class _ContentpageState extends State<Contentpage> {
  List<dynamic> cars = ["bmw", "tyota", "skoda", "tyota", "arus"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text("Content day8"), actions: [Icon(Icons.add)]),

      body: Center(
        child: ListView.builder(
         itemCount: 10,
         itemBuilder: (context, index) => Text("hello"),

          
        ),
      ),
    );
  }
}


//  i=0 , i< 10 ; i++){

/*

  IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("تنبيه"),
                      content: Text("هل انت متاكد من حذف العنصر؟"),
                      actions: [
                        TextButton(onPressed: () {
                          // fetchapi and delete
                          Navigator.of(context).pop();
                        }, child: Text("حذف")),
                        TextButton(onPressed: () {
                          Navigator.of(context).pop();

                        }, child: Text("الغاء")),
                      ],
                    );
                  },
                );
              },
            ),


            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green,
                    content: Text('تم الحفظ بنجاح!'),
                    duration: Duration(seconds: 10),
                  ),
                );
              },
              icon: Icon(Icons.add),
            ),

                      children: [
            Container(width: 200, height: 200, color: Colors.red),
            Container(width: 200, height: 200, color: Colors.yellow),
            Container(width: 200, height: 200, color: Colors.green),
            Container(width: 200, height: 200, color: Colors.redAccent),
            Container(width: 200, height: 200, color: Colors.blueAccent),
            Container(width: 200, height: 200, color: Colors.grey),
          ],
           ListView.separated(
          padding: EdgeInsets.all(20),
          itemCount: cars.length,
          itemBuilder:
              (context, index) => Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                color: index % 2 == 0 ? Colors.red : Colors.green,

                child: Text(
                  "Car  ${cars[index]}",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
          separatorBuilder: (BuildContext context, int index) {
            return Gap(10);
          },
        ),



        display:grid;
        gridtempalteColumf: 200 200 200;

*/ 
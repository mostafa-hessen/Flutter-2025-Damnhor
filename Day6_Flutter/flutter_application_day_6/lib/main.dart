import 'package:flutter/material.dart';
import 'package:flutter_application_day_6/Pages/HomePage.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:HomePage() ,
    );
  }
}




class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: 
        
        [
          BottomNavigationBarItem( label: "ds", icon: Icon(Icons.add))
        ]
        ),
        body: Image.asset('image-from-rawpixel-id-17736049-png.png')
      ),
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

                  image: DecorationImage(image: 
                  NetworkImage('')
                  
                  )
                ),
                
                width: 100, height: 100, color: Colors.red),
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



//100 /4 => 25 

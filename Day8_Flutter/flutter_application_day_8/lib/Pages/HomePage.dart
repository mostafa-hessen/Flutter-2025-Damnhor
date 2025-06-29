import 'package:flutter/material.dart';
import 'package:flutter_application_day_6/Pages/AboutPage.dart';
import 'package:flutter_application_day_6/Pages/Detiels.dart';
import 'package:flutter_application_day_6/util/Common.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_application_day_6/';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF277EBE),

      appBar: AppBar(title: Text("home"), backgroundColor: Colors.white,
      actions: [
        IconButton(onPressed: ()async{
            var preff=await SharedPreferences.getInstance();
            preff.clear();

        }, icon: Icon(Icons.logout))
      ],),
      body: SafeArea(
        child: Column(
          children: [
            // section 1
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  // row1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  hi
                      Column(
                        children: [
                          Text(
                            "Hi, Mostaf",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),

                          Text(
                            "21 Jan 2025",
                            style: TextStyle(
                              fontSize: 15,
                              color: const Color.fromARGB(255, 198, 188, 188),
                            ),
                          ),
                        ],
                      ),

                      //icon
                      Shap(
                        widget: Icon(Icons.notifications, color: Colors.white),
                      ),
                    ],
                  ),

                  Gap(),
                  // row2  search section
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF408DC5),
                    ),
                    width: 450,
                    height: 50,
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        Text("search", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),

                  Gap(),

                  // row3 how do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel ?",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),

                  Gap(),
                  // row4
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Shap(
                            width: 70,
                            heigth: 70,
                            widget: Text("😊", style: TextStyle(fontSize: 30)),
                          ),
                          Text(
                            "Smille",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.4,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Shap(
                            width: 70,
                            heigth: 70,
                            widget: Text("😒", style: TextStyle(fontSize: 30)),
                          ),
                          Gap(0, 20),
                          Text(
                            "Badly",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.4,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Shap(
                            width: 70,
                            heigth: 70,
                            widget: Text("😍", style: TextStyle(fontSize: 30)),
                          ),
                          Text(
                            "Hello",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // section 2
            // Expanded(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(50),
            //         topRight: Radius.circular(50),
            //       ),
            //       color: Colors.white,
            //     ),

            //   ),
            // ),
            Column(
              children: [
                MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Back to login",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),

                Gap(),
                MaterialButton(
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/about');
                  },
                  child: Text(
                    "Go  To About",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Gap(),

                MaterialButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:
                            (context) => DetielsPage(
                              itemName: "t-shirt",
                              itemPrice: 200,
                            ),
                      ),
                      // MaterialPageRoute(builder: (context)=>DetielsPage())
                    );
                  },
                  child: Text(
                    "Go  To Detiels",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),

                Gap(),
                MaterialButton(
                  color: Colors.black,
                  onPressed: () async {
                    var pref = await SharedPreferences.getInstance();
                    print(pref);
                    print(pref.getString("userName"));

                 
                 
                  },
                  child: Text(
                    "getCurrent user",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// #fff

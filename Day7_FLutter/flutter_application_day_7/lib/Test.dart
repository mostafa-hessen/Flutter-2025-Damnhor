// Center(
//           child: Container(
//             margin: EdgeInsets.only(top: 10, left: 10),
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 fit: BoxFit.cover,
//                 image: NetworkImage(
//                   'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
//                 ),
//               ),
//               shape: BoxShape.rectangle,
//               color: Colors.blue,
//               gradient: LinearGradient(
//                 begin: Alignment.bottomLeft,
//                 end: Alignment.topLeft,
//                 colors: <Color>[
//                   Colors.red,
//                   Colors.blue,
//                   Colors.pinkAccent,
//                   // Color(0xff1f005c),
//                   // Color(0xff5b0060),
//                   // Color(0xff870160),
//                   // Color(0xffac255e),
//                   // Color(0xffca485c),
//                   // Color(0xffe16b5c),
//                   // Color(0xfff39060),
//                   // Color(0xffffb56b),
//                 ],
//               ), // Gradient from https:,
//               borderRadius: BorderRadius.all(Radius.circular(100)),
//             ),
//             width: 50,
//             height: 50,

//             child: Text("hello"),
//           ),
//         ),


//  Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.yard_rounded),
//           title: Text("flutter app"),
//           centerTitle: true,
//           actions: [Icon(Icons.more_vert), Icon(Icons.search)],
//           backgroundColor: Color.fromARGB(255, 113, 253, 255),
//         ),

//         body: 
//         Container(
//           // width: 1000,
//           // height: 1000,
//           color: Colors.amberAccent,
//           padding: EdgeInsets.all(10),
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             // crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Container(width: 300, height: 100, color: Colors.red),
//               Container(width: 100, height: 100, color: Colors.blue),
//               Container(width: 100, height: 100, color: Colors.green),
              
//               ],
//           ),
//         ),
//       ),



//  SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
                    

//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           children: [
//                             Shap(
//                               width: 70,
//                               heigth: 70,
//                               widget: Text("😊", style: TextStyle(fontSize: 30)),
//                             ),
//                             Text(
//                               "Smille",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800,
//                                 letterSpacing: 1.4,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Shap(
//                               width: 70,
//                               heigth: 70,
//                               widget: Text("😒", style: TextStyle(fontSize: 30)),
//                             ),
//                             Text(
//                               "Badly",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800,
//                                 letterSpacing: 1.4,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Shap(
//                               width: 70,
//                               heigth: 70,
//                               widget: Text("😍", style: TextStyle(fontSize: 30)),
//                             ),
//                             Text(
//                               "Hello",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800,
//                                 letterSpacing: 1.4,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Shap(
//                               width: 70,
//                               heigth: 70,
//                               widget: Text("❤️", style: TextStyle(fontSize: 30)),
//                             ),
//                             Text(
//                               "Love",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800,
//                                 letterSpacing: 1.4,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Shap(
//                               width: 70,
//                               heigth: 70,
//                               widget: Text("😊", style: TextStyle(fontSize: 30)),
//                             ),
//                             Text(
//                               "Badly",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800,
//                                 letterSpacing: 1.4,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Shap(
//                               width: 70,
//                               heigth: 70,
//                               widget: Text("😊", style: TextStyle(fontSize: 30)),
//                             ),
//                             Text(
//                               "Badly",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800,
//                                 letterSpacing: 1.4,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Shap(
//                               width: 70,
//                               heigth: 70,
//                               widget: Text("😊", style: TextStyle(fontSize: 30)),
//                             ),
//                             Text(
//                               "Badly",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800,
//                                 letterSpacing: 1.4,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),



// class MyState extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() => CounterStaeFull() ;

  
// }


// class CounterStaeFull extends State<MyState> {
//   int counter =0;
//   @override
//   Widget build(BuildContext context) {
//       return  Scaffold(
//       appBar: AppBar(title: Text("counter from statefull"), centerTitle: true),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IconButton(onPressed: () {
//               setState(() {
//                 counter--;
//               });
//             }, icon: Icon(Icons.exposure_minus_1)),

//             Text("click is  $counter", style: Theme.of(context).textTheme.titleLarge),
//             IconButton(onPressed: () {
//               setState(() {
//                 counter++;
//               });
//               print(counter);

//             }, icon: Icon(Icons.add)),
//           ],
//         ),
//       ),
//     );
//   }

// }



// class SwitchSection extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => SwitchCompnent();
// }

// class SwitchCompnent extends State<SwitchSection> {

//   bool stateOfWitch =false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Switch from statefull"), centerTitle: true),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [

//             SwitchListTile(
//               title:Text("work",style: Theme.of(context).textTheme.titleLarge,),
              
//               value: stateOfWitch,
//                onChanged: (val){

//               print(val);

//              setState(() {
//                stateOfWitch=val;
//              }); 

//             })

//           ],
//         ),
//       ),
//     );
//   }
// }




// class RadioSection extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => RadioCompnent();
// }

// class RadioCompnent extends State<RadioSection> {
//   String groupValue = "";
//   String male = "male";
//   String female = "female";

//   bool stateOfWitch = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Switch from statefull"), centerTitle: true),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RadioListTile(
//               subtitle: Text("ds"),
//               activeColor:Colors.red,
//               title: Text("male"),
//               value: male,
//               groupValue: groupValue,
//               onChanged: (val) {
//                 setState(() {
//                   groupValue = val!;
//                 });
//               },
//             ),
//             RadioListTile(
//               title: Text("female"),
//               value: female,
//               groupValue: groupValue,
//               onChanged: (val) {
//                 setState(() {
//                   groupValue = val!;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

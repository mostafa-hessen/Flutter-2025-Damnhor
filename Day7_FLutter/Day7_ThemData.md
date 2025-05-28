اشرح الاتي في ملف 
html css tailwind css

نظم لي الشرح الاتي في ملف html tailwind احتراافي



```dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF277EBE),
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
          subtitle1: TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 198, 188, 188),
          ),
          bodyText1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.4,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: const Color(0xFF408DC5),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintStyle: const TextStyle(color: Colors.white),
        ),
      ),
      home: HomePage(),
    ),
  );
}

// ---------------- HOME PAGE ----------------

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, Mostafa",
                            style: Theme.of(context).textTheme.headline6),
                        Text("21 Jan 2025",
                            style: Theme.of(context).textTheme.subtitle1),
                      ],
                    ),
                    Shap(widget: Icon(Icons.notifications)),
                  ],
                ),
                Gap(),

                // row2 search
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .inputDecorationTheme
                        .fillColor, // أخذ اللون من الثيم
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 450,
                  height: 50,
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Text("search",
                          style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                ),

                Gap(),

                // row3 how do you feel
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("How do you feel ?",
                        style: Theme.of(context).textTheme.headline6),
                    Icon(Icons.more_horiz),
                  ],
                ),
                Gap(),

                // row4 emojis
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    emojiColumn(context, "😊", "Smille"),
                    emojiColumn(context, "😒", "Badly"),
                    emojiColumn(context, "😍", "Hello"),
                  ],
                ),
              ],
            ),
          ),

          // section 2 white
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget emojiColumn(BuildContext context, String emoji, String text) {
    return Column(
      children: [
        Shap(
          width: 70,
          heigth: 70,
          widget: Text(emoji, style: TextStyle(fontSize: 30)),
        ),
        Text(text, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}

// ---------------- COMPONENTS ----------------

class Gap extends StatelessWidget {
  double heigth;
  double width;
  Gap([this.heigth = 30, this.width = 0]);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: heigth, width: width);
  }
}

class Shap extends StatelessWidget {
  double width;
  double heigth;
  Color color = const Color(0xFF408DC5);
  Widget? widget;

  Shap({this.width = 50, this.heigth = 50, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10),
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
```

---

## ✅ ما تم تحسينه:

| قبل                                    | بعد                    |
| -------------------------------------- | ---------------------- |
| كل `TextStyle` و `Color` مكتوبة يدويًا | كلها داخل `ThemeData`  |
| صعوبة التعديل لاحقًا                   | تعديل مركزي من الثيم   |
| تكرار في اللون والخطوط                 | إعادة استخدام من الثيم |

---
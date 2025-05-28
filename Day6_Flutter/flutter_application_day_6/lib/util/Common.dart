
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

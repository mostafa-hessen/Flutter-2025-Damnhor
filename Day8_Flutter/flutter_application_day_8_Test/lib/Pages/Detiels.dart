import 'package:flutter/material.dart';

class DetielsPage extends StatelessWidget {
  final String itemName;
  final int itemPrice;
  const DetielsPage({
    super.key,
    required this.itemName,
    required this.itemPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("detiels"),),

      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: Text("item name is $itemName item price is $itemPrice"),
        ),
      ),
    );
  }
}

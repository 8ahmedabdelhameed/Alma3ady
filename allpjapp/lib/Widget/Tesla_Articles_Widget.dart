import 'package:flutter/material.dart';

class TeslaArticlesWidget extends StatelessWidget {
  String Desc;
  TeslaArticlesWidget({super.key,required this.Desc});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.grey,
        shadowColor: Colors.brown,
        margin: EdgeInsets.all(30),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(padding: const EdgeInsets.all(30), child: Text(Desc,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)
        )

    );
  }
}

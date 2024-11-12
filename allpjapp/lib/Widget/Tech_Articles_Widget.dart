import 'package:flutter/material.dart';

class TechArticlesWidget extends StatelessWidget {
  final String desc;

  const TechArticlesWidget({super.key, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      shadowColor: Colors.brown,
      margin: const EdgeInsets.all(16),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          desc,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}

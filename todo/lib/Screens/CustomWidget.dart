import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customwidget extends StatelessWidget {
  String todo;
   Customwidget({super.key,required this.todo});

  @override
  Widget build(BuildContext context) {

    return  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(todo),
        ),
    );
  }
}

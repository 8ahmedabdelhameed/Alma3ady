import 'package:flutter/material.dart';

import 'Tech_Articles_Screen.dart';
import 'Tesla_Articles_Screen.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  TechArticlesScreen(),
                  ),
                );
              },
              child: Text("Tech Articles Page"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TeslaArticlesScreen(),
                  ),
                );
              },
              child: Text("Tesla Articles Page"),
            ),
          ],
        ),
      ),
    );
  }
}

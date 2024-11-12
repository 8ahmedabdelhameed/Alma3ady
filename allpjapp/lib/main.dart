import 'package:allpjapp/Provider/LoginProvider.dart';
import 'package:allpjapp/Provider/Tech_Articles_Provider.dart';
import 'package:allpjapp/Provider/Tesla_Articles_Provider.dart';
import 'package:allpjapp/Views/HomeScreen.dart';
import 'package:allpjapp/Views/LoginPageScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TeslaArticlesProvider()),
        ChangeNotifierProvider(create: (context) => TechArticlesProvider()),
        ChangeNotifierProvider(create: (context) => LoginProvider(),)
      ],
      child: MaterialApp(
        title: 'PTime',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Loginpagescreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/MainPage.dart';
import 'pages/CatalogPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/catalog',
      routes: {
        '/': (context) => CatalogPage(),
        '/test': (context) => TestPage(),
        '/main': (context) => MainPage(),
        '/catalog': (context) => CatalogPage(),
      },
    );
  }
}
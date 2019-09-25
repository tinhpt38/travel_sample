import 'package:flutter_web/material.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LiLi Berry - Coder | Developer ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      
    );
  }
}

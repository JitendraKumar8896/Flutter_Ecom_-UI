import 'package:ecom_project/pages/page1.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ecom projects',
      theme: ThemeData(
        //primaryColor: const Colors.grey[600],
        //backgroundColor: Colors.grey[600],
        cardColor: Colors.blueGrey,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

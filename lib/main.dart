import 'package:flutter/material.dart';
import 'package:uas/Aritvar.dart';
import 'package:uas/Datatabel.dart';
import 'package:uas/If.dart';
import 'package:uas/MyHomePage.dart';
import 'package:uas/Nav.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: MyHomePage(title: 'Uas Depanri Purba',),
      routes: <String, WidgetBuilder>{
        '/aritvar':(BuildContext context)=>Aritvar(),
        '/datatabel':(BuildContext context)=>Datatabel(),
        '/nav':(BuildContext context)=>Nav(),
        '/if':(BuildContext context)=>If(),
      },
      title: 'Uas Depanri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final int rows, columns;

  const MyApp({Key? key, this.columns = 4, this.rows = 4}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Puzzle Hackathon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(columns: columns, rows: rows,),
    );
  }
}
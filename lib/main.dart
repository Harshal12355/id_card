import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ID-Card",
      home: Scaffold(
        appBar: AppBar(
          title: Text('ID Details'),
        ),
        body: Row(
          children: [

          ],
        ),
      ),
    );
  }
}

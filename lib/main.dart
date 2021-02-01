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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Center(
              child: Text("ID-Details")
          ),
          elevation: 0.0,
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {
            setState(() {
              level += 1;
            });
        },
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children : [
            Container(
              child: Text(
                  "NAME",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              child: Text(
                  "Chun - Li",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.amber,
                ),
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.grey[600],
              thickness: 1.0,
            ),

            SizedBox(height: 6.0),
            Container(
              child: Text(
                "TYPE",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              child: Text(
                "Fighter",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.amber,
                ),
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.grey[600],
              thickness: 1.0,
            ),

            SizedBox(height: 6.0),
            Container(
              child: Text(
                "LEVEL",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              child: Text(
                "$level",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

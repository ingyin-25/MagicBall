import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic-Ball',

      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Please press your lucky'),
        ),
        body: MagicApp(),
      ),
    );
  }
}

class MagicApp extends StatefulWidget {  
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int result=6;
  void lucky(){setState(() {result = Random().nextInt(6)+1;});}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){lucky();},
                child: Image.asset('images/ans$result.png')
              ),
            ),
          ],
        ),
      ),
    );
  }
}

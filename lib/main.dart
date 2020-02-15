import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text(
            'Banana App',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.yellow[600],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/banana2.png'),
          ),
        ),
      ),
    ),
  );
}

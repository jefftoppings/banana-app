import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberClicks = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      child: Image.asset('images/banana2.png'),
                      onPressed: () {
                        setState(() {
                          numberClicks++;
                        });
                      },
                    ),
                  ),
                  Text(
                    'All Time Banana Taps',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 100),
                    child: Text(
                      '$numberClicks',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Dicee'),
      ),
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var leftImageNumber = 2;
  var rightImageNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftImageNumber = Random().nextInt(6) + 1;
                    });
                    print('left button got pressed');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/dice$leftImageNumber.png'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightImageNumber = Random().nextInt(6) + 1;
                    });
                    print('right button got pressed');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('images/dice$rightImageNumber.png'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          IconButton(
            onPressed: () {
              setState(() {
                leftImageNumber = Random().nextInt(6) + 1;
                rightImageNumber = Random().nextInt(6) + 1;
              });
            },
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}

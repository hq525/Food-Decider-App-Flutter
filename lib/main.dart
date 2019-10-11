import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange[300],
        appBar: AppBar(
          title: Text(
            'Food picker'
          ),
        ),
        body: FoodPicker()
      ),
    ),
  );
}

class FoodPicker extends StatefulWidget {
  @override
  _FoodPickerState createState() => _FoodPickerState();
}

class _FoodPickerState extends State<FoodPicker> {
  String fileName = 'start.png';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  int number = Random().nextInt(60) + 1;
                  fileName = 'food' + number.toString() + '.PNG';
                });
              },
              child: Image.asset('assets/images/$fileName'),
            ),
          ),
        ],
      ),
    );
  }
}


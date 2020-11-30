import 'package:drag_drop_prototype/screens/home.dart';
import 'package:flutter/material.dart';

import 'car.dart';

class CarParkSpace extends StatefulWidget {
  @override
  _CarParkSpaceState createState() => _CarParkSpaceState();
}

class _CarParkSpaceState extends State<CarParkSpace> {
  bool isSuccessful = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.green,
      child: DragTarget(
        builder: (context, List<int> candidateData, rejectedData) {
          print(candidateData);
          return Center(
            child: isSuccessful
                ? Car()
                : Text(
              "Park Here",
              style: TextStyle(color: Colors.white, fontSize: 22.0),
            ),
          );
        },
        onWillAccept: (data) {
          return true;
        },
        onAccept: (data) {
          if (data == 1) {
            setState(() {
              isSuccessful = !isSuccessful;
            });
          }
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Car extends StatelessWidget {
  const Car({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Icon(
        Icons.car_repair,
        size: 90.0,
      ),
    );
  }
}

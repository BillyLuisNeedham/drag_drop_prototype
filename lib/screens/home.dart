import 'package:drag_drop_prototype/custom_widgets/car_park_space.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

  bool isSuccessful = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Draggable(
            data: 1,
            child: Container(
              child: Center(
                child: Icon(
                  Icons.car_repair,
                  size: 100.0,
                ),
              ),
              height: 100,
              width: 100,
            ),
            feedback: Container(
              child: Center(
                child: Icon(
                  Icons.car_repair,
                  size: 100.0,
                ),
              ),
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
          ),
          ParkingRow(),
          ParkingRow(),
          ParkingRow(),
          ParkingRow(),
          ParkingRow(),
            ]),
      ),
    );
  }
}

class ParkingRow extends StatelessWidget {
  const ParkingRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CarParkSpace(),
        CarParkSpace(),
        CarParkSpace(),
        CarParkSpace(),
      ],
    );
  }
}

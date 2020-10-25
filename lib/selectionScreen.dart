import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[600],
        appBar: AppBar(
          toolbarHeight: 100.0,
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
          title: Text(
            'HomeMe',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Source Sans Pro',
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
            ),
          ),
        ),
        body: SelectionScreen(),
      ),
    );
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 75.0, 50.0, 10.0),
          child: Row(
            children: [
              FlatButton(
                onPressed: () {},
                child: Image.asset('images/icons8-prefab-house-100.png'),
              ),
              FlatButton(
                onPressed: () {},
                child: Image.asset('images/icons8-take-away-food-100.png'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 25.0, 50.0, 10.0),
          child: Row(
            children: [
              FlatButton(
                  onPressed: () {},
                  child: Image.asset('images/icons8-hospital-3-100.png')),
              FlatButton(
                onPressed: () {},
                child:
                    Image.asset('images/icons8-administrative-tools-100.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

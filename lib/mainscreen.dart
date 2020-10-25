
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'selectionScreen.dart';



class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _formKey = GlobalKey<FormState>();

  String zip ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[600],
      appBar: AppBar(

        backgroundColor: Colors.lightGreen,
        title: Text('HomeMe'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(hintText: 'zipcode'),
                validator: (val) => val.isEmpty ? 'Enter zipcode' : null,
                onChanged: (val){
                  setState(() => zip = val);
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  }
              ),
            ],
          ),
        ),

      ),
    );
  }
}


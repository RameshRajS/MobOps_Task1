// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:myapp/pages/display.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  TextEditingController NameTEC = TextEditingController();
  List<String> Names =[];
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text(
          'Student Names',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Play',
            letterSpacing: 1.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 175.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: NameTEC,
                      decoration: InputDecoration(
                        labelText: 'Enter Name',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Play',
                          letterSpacing: 0.7,
                        ),
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.amberAccent,
                            width: 3.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.amberAccent,
                            width: 3.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.name,
                      cursorColor: Colors.white,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Play',
                        letterSpacing: 0.7,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        String Name = NameTEC.text;
                        if(Name.isEmpty == false){
                          Names.add(Name);
                          NameTEC.clear();
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[850],
                      textStyle: TextStyle(
                        fontFamily: 'Play',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.7,
                      ),
                      elevation: 10.0,
                    ),
                    child: Text('ADD'),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => Display(names: Names,), 
                    )
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[850],
                  textStyle: TextStyle(
                    fontFamily: 'Play',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                  elevation: 10.0,
                  padding: EdgeInsets.symmetric(vertical: 12.5, horizontal: 40.0),
                ),
              child: Text('SHOW ALL NAMES'),
              ),
            ],
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Names.clear();
          });
        },
        elevation: 10.0, 
        backgroundColor: Colors.grey[850],
        child: Icon(
          Icons.restart_alt,
          size: 35.0,
        ),   
      ),
    );
  }
}
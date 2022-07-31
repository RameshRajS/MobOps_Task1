// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';


class Display extends StatefulWidget {
  final List<String> names;
  const Display({Key? key, required this.names}) : super(key: key);
  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text(
          'Display',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Play',
            letterSpacing: 1.0,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: widget.names.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
            child: Container(
              height: 30.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.amberAccent, 
                  width: 3.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Text(
                widget.names[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontFamily: 'Play',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.7,
                ),
              ),
            ),
          );
        }
      )
    );
  }
}


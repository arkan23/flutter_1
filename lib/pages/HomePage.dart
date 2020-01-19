import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Left text',
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    'Right text',
                    textDirection: TextDirection.rtl,
                  ),
                ]
              ),
              Text(
                'Scond text',
                textDirection: TextDirection.rtl,
              ),
            ],
          )
      ),
    );
  }
}

class TestPage extends StatelessWidget {
  TestPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('aa.jpg'),
            //fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Left text',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                      Text(
                        'Right text',
                        textDirection: TextDirection.rtl,
                      ),
                    ]
                ),
                GestureDetector(
                  onDoubleTap: () => print('Double TAP'),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.deepOrange[500],
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Text('Gesture Item', style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600),),
                  ),
                ),
                Text(
                  'Scond text',
                  textDirection: TextDirection.rtl,
                ),
              ],
            )
        ),
      ),
    );
  }
}
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  // const Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index = 0;
  List quotes = [

    "The empty vessel makes the loudest sound.",
    "The course of true love never did run smooth.",
    "The golden age is before us, not behind us.",
    "The wheel is come full circle.",
    "They do not love that do not show their love.",
    "This above all; to thine own self be true.",
    "Uneasy lies the head that wears a crown.",
    "We know what we are, but know not what we may be.",
    "What's done can't be undone."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration:  BoxDecoration(
                        color:Colors.transparent,
                        borderRadius: BorderRadius.circular(14.5)
                    ),

                    child: Center(child: Text(quotes[_index % quotes.length],
                      style:TextStyle(
                          color: Colors.grey.shade600,
                          fontStyle: FontStyle.italic,
                          fontSize: 16.5
                      ) ,))),
              ),
            ),

            Divider(thickness: 1.3,),
            Padding(
              padding: const EdgeInsets.only(top:18.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color:Colors.greenAccent.shade700,
                  icon: Icon(Icons.wb_sunny),
                  label: Text("Inspire Me!", style: TextStyle(
                      fontSize: 18.8,
                      color: Colors.white
                  ))),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    // incrementing index by 1

    setState(() {
      _index += 1;
    });



  }
}
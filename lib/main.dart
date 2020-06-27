import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Magic Conch Shell"),
          backgroundColor: Colors.blue.shade800,
        ),
        backgroundColor: Colors.blue.shade300,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: MagicShell(),
        ),
      ),
    ),
  ));
}

class MagicShell extends StatefulWidget {
  @override
  _MagicShellState createState() => _MagicShellState();
}

class _MagicShellState extends State<MagicShell> {
  TextEditingController _questionController = TextEditingController();
  List<String> listText = [
    '',
    'Maybe Someday',
    'Nothing',
    'Neither',
    'No',
    'Yes',
    'Try Asking Again'
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40.0,
          child: Text(
            'Ask me anything',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900,
            ),
          ),
        ),
        SizedBox(
          child: Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  controller: _questionController,
                  decoration: InputDecoration(hintText: 'Type question here'),
                ),
              ),
              RaisedButton(
                color: Colors.blueAccent.shade700,
                onPressed: () {
                  setState(() {
                    index = Random().nextInt(6) + 1;
                  });
                },
                child: Text(
                  'Ask',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 45.0,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              '${listText[index]}',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
          ),
        ),
        Expanded(
          child: Image.asset('images/MagicConch.png'),
        ),
      ],
    );
  }
}

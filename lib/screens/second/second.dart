import 'package:flutter/material.dart';

class SecondArguments {
  final String passedString;
  final Text aText;

  SecondArguments({this.passedString, this.aText});
}

class Second extends StatefulWidget {
  final SecondArguments arguments;

  Second({
    this.arguments,
  });
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  void _goBack() {
    Navigator.pop(context, "buda ikinci sayfa");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ikinci ekran"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("hadi geri dön"),
              onPressed: _goBack,
            ),
            Text(widget.arguments.passedString),
            widget.arguments.aText,
          ],
        ),
      ),
    );
  }
}

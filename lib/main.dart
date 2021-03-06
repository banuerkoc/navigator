import 'package:flutter/material.dart';
import 'package:navigator/screens/home/home.dart';
import 'package:navigator/screens/second/second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        final arguments = settings.arguments;
        switch (settings.name) {
          case '/second':
            return MaterialPageRoute(
              builder: (context) => Second(
                arguments: arguments,
              ),
            );
            break;
          default:
            break;
        }
      },
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}

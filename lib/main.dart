import 'package:flutter/material.dart';
import 'package:lab07/pages/Ejemplo_2.dart';
import 'package:lab07/pages/ejemplo_1.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ejemplo1Page()),
                );
              },
              child: Text('Ejemplo 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ejemplo2Page()),
                );
              },
              child: Text('Ejemplo 2'),
            ),
          ],
        ),
      ),
    );
  }
}

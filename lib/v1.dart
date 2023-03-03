import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cálculo IMC"),
        ),
        body: Column( //Ao invés de Column (que é fixo), usar ListView para poder usar o scrool
          children: [
            Flexible(child: Container(color: Colors.red, height: 100,)),
            Flexible(child: Container(color: Colors.yellow, height: 100,)),
          ],
        ),
      ),
    );
  } // Widget build context
}

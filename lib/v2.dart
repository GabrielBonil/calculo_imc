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
        body: Stack(
          //Ao invés de Column (que é fixo), usar ListView para poder usar o scrool
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                decoration: BoxDecoration(shape:BoxShape.circle, color: Colors.yellow),
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  } // Widget build context
}

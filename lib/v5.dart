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
        body: Column(
          //Ao invés de Column (que é fixo), usar ListView para poder usar o scrool
          children: [
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Peso'),
                    TextField(
                      keyboardType: TextInputType.number,
                    ),
                    Text('Altura'),
                    TextField(
                      keyboardType: TextInputType.number,
                    ),
                    Container(
                      width: double.infinity, //double.infinity
                      child: ElevatedButton(
                        child: Text("Calcular"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset('images/abaixo.jpg', fit: BoxFit.fill,),
              ),
            ),
          ],
        ),
      ),
    );
  } // Widget build context
}

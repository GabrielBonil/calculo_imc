import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  //Criando variavel para controlar e editar o textField
  final txtPeso =
      TextEditingController(); //TextEditingController txtPeso = TextEditingController();
  final txtAltura = TextEditingController();

  //final é tipo um const, não pode mudar valor deles, a menos que seja um objeto, ai tem como mudar o valor pq foi atribuido o objeto, para variaveis que possam ser mudadas usar "var"
  var imagem = 'images/abaixo.jpg';
  var imcText = '';

  void calculaImc() {
    var peso = double.parse(txtPeso.text);
    var altura = double.parse(txtAltura.text);
    var imc = peso / (altura * altura);
    //print(imc);

    //setState(() {
    if (imc < 18.5) {
      setState(() {
        imagem = 'images/abaixo.jpg';
        imcText = "Imc abaixo do peso: $imc";
      });
    } else if (imc < 25) {
      setState(() {
        imagem = 'images/ideal.jpg';
        imcText = "Imc ideal: $imc";
      }); //setState(() => imagem = 'images/ideal.jpg');
    } else if (imc < 30) {
      setState(() {
        imagem = 'images/excesso.jpg';
        imcText = "Imc acima do peso: $imc";
      });
    } else if (imc < 40) {
      setState(() {
        imagem = 'images/obesidade1.jpg';
        imcText = "Imc muito acima do peso (obesidade 1): $imc";
      });
    } else {
      setState(() {
        imagem = 'images/obesidade2.jpg';
        imcText = "Imc muito acima do peso (obesidade 2): $imc";
      });
    }
    //});
    //print(imagem);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cálculo - IMC"),
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
                      controller: txtPeso,
                    ),
                    Text('Altura'),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: txtAltura,
                    ),
                    Container(
                      width: double.infinity, //double.infinity
                      child: ElevatedButton(
                        child: Text("Calcular"),
                        onPressed: calculaImc, //onPressed: () => calculaImc(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: FittedBox(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Image.asset(imagem),
                      Positioned(
                        child: GestureDetector(
                          // onTap: () {
                          //   setState(() => imc = null);
                          // },
                          child: Container(
                            child: Text(imcText),
                          ),
                        ),
                      ),
                    ],
                  ), //Sem o child FittedBox: child: Image.asset('images/abaixo.jpg', fit: BoxFit.fill,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

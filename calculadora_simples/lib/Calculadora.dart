import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:
        new AppBar(
        title: new Text(" +- Calculadora Comum x÷",
        ),
        ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Resultado do calculo
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue),
            ),
            //campo de texto do primeiro valor
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: t1,
              ),
              //campo de texto do segundo valor
              new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: t2,
              ),
              // Espaços depois dos inputs
              new Padding(padding: const EdgeInsets.only(top: 20)),

              //new row
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+",
                      style: new TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    )),
                    color: Colors.greenAccent,
                    onPressed: somar,),
                ],
              ),
              // Espaços depois do somar
              new Padding(padding: const EdgeInsets.only(top: 5)),
                new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("-",
                      style: new TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    )),
                    color: Colors.greenAccent,
                    onPressed: subtracao,),
                ],
              ),
              // Espaços depois da subtração
              new Padding(padding: const EdgeInsets.only(top: 5)),
              //new row
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("x",
                      style: new TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    )),
                    color: Colors.greenAccent,
                    onPressed: multiplicar,),
                ],
              ),
              // Espaços depois do somar
              new Padding(padding: const EdgeInsets.only(top: 5)),
                new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("÷",
                      style: new TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    )),
                    color: Colors.greenAccent,
                    onPressed: divisao,),
                ],
              ),
              // Espaços depois dos botões
              new Padding(padding: const EdgeInsets.only(top: 5)),
              // Botão Limpar
                new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("Limpar",
                      style: new TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey
                    )),
                    color: Colors.greenAccent,
                    onPressed: limpar,),
                ],
              ),
          ],
        ),
      ),
    );
  }// Fecha o método build
  // Atributos
  var num1;
  var num2;
  var resultado = 0;

  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");

  // Métodos
  void somar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 + num2;
    });
  }
    void subtracao() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 - num2;
    });
  }
      void multiplicar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 * num2;
    });
  }
      void divisao() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 / num2;
    });
  }
      void limpar(){
        setState(() {
          t1.text = "";
          t2.text = "";
          resultado;
        });
      }

}// Fecha a classe CalculadoraState

// NADA deve ser adicionado depois do return, pois virqa um código 'morto' e não será lido, pois é retornado antes de chegar nele.
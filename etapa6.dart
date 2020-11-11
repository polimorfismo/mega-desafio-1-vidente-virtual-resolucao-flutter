import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: VidenteVirtualPage(),
  ));
}

class VidenteVirtualPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff332B25),
      appBar: AppBar(
        title: Text('Vidente Virtual'),
        backgroundColor: Colors.brown[800],
      ),
      body: Vidente(),
    );
  }
}

class Vidente extends StatefulWidget {
  @override
  _VidenteState createState() => _VidenteState();
}

class _VidenteState extends State<Vidente> {
  int numeroDaImagem = 1;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: TextButton(
        onPressed: () {
          //Ao executar o nextInt um número entre 0 e 4 é gerado aleatoriamente excluindo o 5 (max)
          //Temos então que o número gerado será: 0,1,2,3 ou 4
          //Ao acrescentar o '+2' pegamos o valor gerado aleatoriamente (0,1,2,3 ou 4) e transformamos
          //Teremos então uma nova possível sequência, que será (2,3,4,5 ou 6)
          //Esses são os números relativos às imagens que temos
          setState(() {
            numeroDaImagem = Random().nextInt(5) + 2;
          });

        },
        child: Image.asset('imagens/vidente$numeroDaImagem.png'),
      ),
    );

  }
}


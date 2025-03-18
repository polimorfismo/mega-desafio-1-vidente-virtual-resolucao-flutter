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
        title: Text(
            'Vidente Virtual',
            style: TextStyle(
              color: Colors.white,
            )
        ),
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
          numeroDaImagem = Random().nextInt(4);
          print(numeroDaImagem);
        },
        child: Image.asset('imagens/vidente$numeroDaImagem.png'),
      ),
    );

  }
}

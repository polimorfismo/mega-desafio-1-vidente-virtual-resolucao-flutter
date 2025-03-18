import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: TextButton(
        onPressed: () {
          print('Botão pressionado');
        },
        child: Image.asset('imagens/vidente1.png'),
      ),
    );

  }
}

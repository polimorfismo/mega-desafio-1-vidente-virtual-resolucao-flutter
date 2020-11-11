import 'package:flutter/cupertino.dart';
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
        title: Text('Vidente Virtual'),
        backgroundColor: Colors.brown[800],
      ),
      body: Container(),
    );
  }
}

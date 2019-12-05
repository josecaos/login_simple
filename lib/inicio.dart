import 'package:flutter/material.dart';


class Inicio extends StatefulWidget {
    @override
    _InicioState createState() => _InicioState();
 }

 class _InicioState extends State<Inicio> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      body: Center(
        child: Text("Contenidos del inicio"),
      ),
    );
  }
}
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Ingresa tus datos para continuar ..."),
      ),
      body: Container(
        padding: EdgeInsets.all(25.00),
        child: Column(
          children: <Widget>[
            Text(
              'Ingresa tus datos'
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Correo'
              )
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Contraseña'
              )
            ),
            RaisedButton(
                child: Text('Ingresa'),
                onPressed: (){print("HAHAAA");})
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Simple con 'Firebase'"),
      ),
      body: Container(
        padding: EdgeInsets.all(25.00),
        child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(height: 25.00),
            Text(
              'Ingresa tus datos'
            ),
            SizedBox(height: 25.00),
            TextFormField(
                onSaved: (value) => _email = value,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                labelText: 'Correo'
              )
            ),
            SizedBox(height: 25.00),
            TextFormField(
              onSaved: (value) => _password = value,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Contraseña'
              ),
              obscureText: true,
            ),
            SizedBox(height: 25.00),
            RaisedButton(
                child: Text('Ingresa'),
                onPressed: () {
                  final form = _formKey.currentState;
                  form.save();//salva sus valores para usarlos localmente
                  if (form.validate()) {
                  print("$_email $_password");//uso local de valores
                }},
            )
          ],
        ),
      )
      ),
    );
  }
}
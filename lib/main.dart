import 'package:flutter/material.dart';
import 'package:flutter_applicacion_1/paginas/pantalla.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(LoginApp());
}

//Inicio
// ignore: must_be_immutable
class LoginApp extends StatelessWidget {
  Color _primaryColor = HexColor('#DC54FE');
  Color _accentColor = HexColor('#8A02AE');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lavanderia',
      theme: ThemeData(
        primaryColor: _primaryColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
            .copyWith(secondary: _accentColor),
      ),
      home: Pantallabienvenida(title: 'Flutter'),
    );
  }
}

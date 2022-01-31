import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_applicacion_1/paginas/Login.dart';

class Pantallabienvenida extends StatefulWidget {
  Pantallabienvenida({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _PantallabienvenidaState createState() => _PantallabienvenidaState();
}

class _PantallabienvenidaState extends State<Pantallabienvenida> {
  bool _isVisible = false;

  _PantallabienvenidaState() {
    new Timer(const Duration(milliseconds: 3000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Paginalogin()),
            (route) => false);
      });
    });

    new Timer(Duration(milliseconds: 10), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Theme.of(context).accentColor,
            Theme.of(context).accentColor
          ],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: AnimatedOpacity(
        opacity: _isVisible ? 1.0 : 0,
        duration: Duration(milliseconds: 1200),
        child: Center(
          child: Container(
            height: 140.0,
            width: 140.0,
            child: Center(
              child: ClipOval(
                child: Icon(
                  Icons.android_outlined,
                  size: 128,
                ),
              ),
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 2.0,
                    offset: Offset(5.0, 3.0),
                    spreadRadius: 2.0,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

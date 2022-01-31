import 'package:flutter/material.dart';
import 'package:flutter_applicacion_1/main.dart';
import 'package:flutter_applicacion_1/paginas/botones.dart';

class Detalles extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  Detalles({this.assetPath, this.cookieprice, this.cookiename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: const Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Adquiere tu Producto',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.light_mode_rounded,
                color: const Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: [
        const SizedBox(height: 15.0),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text('Lavanderia',
              style: TextStyle(
                  fontFamily: 'Horarios',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF545D68))),
        ),
        const SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 150.0, width: 100.0, fit: BoxFit.contain)),
        const SizedBox(height: 20.0),
        Center(
          child: Text(cookieprice,
              style: const TextStyle(
                  fontFamily: 'Horarios',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF545D68))),
        ),
        const SizedBox(height: 10.0),
        Center(
          child: Text(cookiename,
              style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0)),
        ),
        const SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: const Text(
                'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes,',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Horarios',
                    fontSize: 16.0,
                    color: const Color(0xFF545D68))),
          ),
        ),
        const SizedBox(height: 20.0),
        Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: const Color(0xFF545D68)),
                child: const Center(
                    child: Text(
                  'Aquirir producto',
                  style: TextStyle(
                      fontFamily: 'horarios',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginApp()));
        },
        backgroundColor: const Color(0xFFFAFAFA),
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomBar(),
    );
  }
}

/* Carrito de compras */
import 'package:flutter/material.dart';
import 'package:flutter_applicacion_1/main.dart';
import 'package:flutter_applicacion_1/paginas/botones.dart';
import 'package:flutter_applicacion_1/paginas/paginas.dart';

class CarritoCompras extends StatefulWidget {
  const CarritoCompras({Key? key}) : super(key: key);

  @override
  _CarritoComprasState createState() => _CarritoComprasState();
}

class _CarritoComprasState extends State<CarritoCompras>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text('Lavanderia',
            style: TextStyle(
                fontFamily: 'Horarios',
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
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0),
        children: <Widget>[
          const SizedBox(height: 15.0),
          const Text('Carrito',
              style: TextStyle(
                  fontFamily: 'app',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: const Color(0xFFB0BEC5),
              isScrollable: true,
              labelPadding: const EdgeInsets.only(right: 45.0),
              unselectedLabelColor: const Color(0xFFB0BEC5),
              tabs: const [
                Tab(
                  child: Text('Economicos',
                      style: TextStyle(
                        fontFamily: 'Horarios',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Baratos',
                      style: TextStyle(
                        fontFamily: 'Horarios',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Con Descuento',
                      style: TextStyle(
                        fontFamily: 'Horarios',
                        fontSize: 21.0,
                      )),
                )
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                Paginas(),
                Paginas(),
                Paginas(),
              ]))
        ],
      ),
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

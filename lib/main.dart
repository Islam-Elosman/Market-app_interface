import 'package:flutter/material.dart';
import 'package:market_app/sepetim.dart';
import 'package:market_app/urunler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _atifIcerikNo = 0;
  List _icerikler = [];

  @override
  @override
  void initState() {
    super.initState();
    _icerikler = [urunler(), sepetim()];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Text(
            "Tıkla Gelsin",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: _icerikler[_atifIcerikNo],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _atifIcerikNo,
        selectedItemColor: Colors.green[500],
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ürünler"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Sepetim"),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _atifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}

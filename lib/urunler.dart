import 'package:flutter/material.dart';
import 'package:market_app/kategori.dart';

class urunler extends StatefulWidget {
  const urunler({super.key});

  @override
  State<urunler> createState() => _urunlerState();
}

class _urunlerState extends State<urunler> with SingleTickerProviderStateMixin {
  late TabController televizyonKontorlcu;
  @override
  void initState() {
    super.initState();
    televizyonKontorlcu = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: televizyonKontorlcu,
          indicatorColor: Colors.red[400],
          labelColor: Colors.red[400],
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          tabs: [
            Tab(
              child: Text("Temel Gıda"),
            ),
            Tab(
              child: Text("İçecekler"),
            ),
            Tab(
              child: Text("Şekerler"),
            ),
            Tab(
              child: Text("Temizlik"),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(controller: televizyonKontorlcu, children: [
            kategori(
              kategori1: "Temel Gıda",
            ),
            kategori(
              kategori1: "İçecekler",
            ),
            kategori(kategori1: "Şekerler"),
            kategori(
              kategori1: "Temizlik",
            ),
          ]),
        ),
      ],
    );
  }
}

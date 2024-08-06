import 'dart:convert';

import 'package:flutter/material.dart';

class kategori extends StatefulWidget {
  final String kategori1;

  const kategori({super.key, required this.kategori1});

  @override
  State<kategori> createState() => _kategoriState();
}

class _kategoriState extends State<kategori> {
  late List<Widget> gosterilecekliste;

  @override
  void initState() {
    super.initState();
    if (widget.kategori1 == "Temel Gıda") {
      gosterilecekliste = <Widget>[
        urunKarti(),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.green,
        ),
      ];
    }
    if (widget.kategori1 == "İçecekler") {
      gosterilecekliste = <Widget>[
        Container(
          color: Colors.amber,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.green,
        ),
      ];
    }
    if (widget.kategori1 == "Şekerler") {
      gosterilecekliste = <Widget>[
        urunKarti(),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.green,
        ),
      ];
    }
    if (widget.kategori1 == "Temizlik") {
      gosterilecekliste = <Widget>[
        Container(
          color: Colors.amber,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.green,
        ),
      ];
    }
  }

  Widget urunKarti() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 4.0,
              spreadRadius:
                  2.0 //ne kadar artarsa golge yaricapini o kadar artar
              ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120.0,
            height: 80.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2014/05/28/00/27/olive-oil-356102_640.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text("zeytin Yağı"),
          SizedBox(
            height: 5.0,
          ),
          Text("1 Lt: 79.99 tl"),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 12.0,
        padding: EdgeInsets.all(10.0),
        childAspectRatio: 1.0,
        children: gosterilecekliste);
  }
}

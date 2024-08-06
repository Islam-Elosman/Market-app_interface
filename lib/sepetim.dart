import 'package:flutter/material.dart';

class sepetim extends StatelessWidget {
  const sepetim({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Sepetim",
              style: TextStyle(
                color: Colors.red[500],
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        ListTile(
          title: Text("çikolatalı Gofret"),
          subtitle: Text("5 adet * 3.50"),
          trailing: Text("17.50"),
        ),
        ListTile(
          title: Text("Islak Mendil"),
          subtitle: Text("1 adet * 18.00"),
          trailing: Text("18.00"),
        ),
        ListTile(
          title: Text("Party patates Cipsi "),
          subtitle: Text("2 adet * 14.00"),
          trailing: Text("34.00"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                children: [
                  Text(
                    "Toplam Tutar",
                    style: TextStyle(
                      color: Colors.red[500],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "69.50",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Material(
            child: InkWell(
              onTap: () {},
              
              child: Container(
                //width: 130.0,
                height: 70.0,
                decoration: BoxDecoration(
                    color: Colors.red[500],
                    borderRadius: BorderRadius.circular(35.0)),
                child: Center(
                  child: Text(
                    "Siparişiniz Tamamla",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

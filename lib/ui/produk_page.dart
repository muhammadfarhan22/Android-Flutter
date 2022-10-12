import 'package:flutter/material.dart';
import 'package:tugas_pertemuan_2/ui/produk_detail.dart';
import 'package:tugas_pertemuan_2/ui/produk_form.dart';

class ProdukPage extends StatefulWidget {
  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Produk"),
        actions: [
          GestureDetector(
            //? Menampilkan Icon
            child: Icon(Icons.add),
            //? Pada saat Icon + di tap
            onTap: () async {
              //? Berpindah kehalaman produk form
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => ProdukForm(),
                ),
              );
            },
          )
        ],
      ),
      body: ListView(
        children: [
          //? List 1
          ItemProduk(kodeProduk: 'A001', namaProduk: 'Kulkas', harga: 2500000),
          //? List 2
          ItemProduk(kodeProduk: 'A002', namaProduk: 'TV', harga: 5000000),
          //? List 3
          ItemProduk(
              kodeProduk: 'A003', namaProduk: 'Mesin Cuci', harga: 1500000),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

//? membuat construktor
  ItemProduk(
      {required this.kodeProduk,
      required this.namaProduk,
      required this.harga});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk),
          subtitle: Text(
            harga.toString(),
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          new MaterialPageRoute(
            builder: (context) => ProdukDetail(
                kodeProduk: kodeProduk, namaProduk: namaProduk, harga: harga),
          ),
        );
      },
    );
  }
}

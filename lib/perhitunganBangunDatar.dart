import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gabut/pgPersegiPanjang.dart';
import 'package:gabut/pgSegitiga.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class perhitunganBangunDatar extends StatefulWidget {
  const perhitunganBangunDatar({Key? key}) : super(key: key);

  @override
  State<perhitunganBangunDatar> createState() => _perhitunganBangunDatarState();
}

class _perhitunganBangunDatarState extends State<perhitunganBangunDatar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Perhitungan Bangun Datar"),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Persegi Panjang",
                  icon: Icon(Icons.rectangle_outlined),
                ),
                Tab(
                  text: "Segitiga",
                  icon: Icon(CupertinoIcons.triangle),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [pgPersegiPanjang(), pgSegitiga()]),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class pgSegitiga extends StatefulWidget {
  const pgSegitiga({Key? key}) : super(key: key);

  @override
  State<pgSegitiga> createState() => _pgSegitigaState();
}

class _pgSegitigaState extends State<pgSegitiga> {
  TextEditingController ctrAlas = new TextEditingController();
  TextEditingController ctrTinggi = new TextEditingController();
  TextEditingController ctrLuas = new TextEditingController();
  TextEditingController ctrKeliling = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(children: [
          SizedBox(height: 20),
          Text(
            "Segitiga",
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            controller: ctrAlas,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Alas',
              hintText: 'Masukkan Alas',
            ),
          ),
          Container(
            height: 20,
          ),
          TextField(
            controller: ctrTinggi,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Tinggi',
              hintText: 'Masukkan Tinggi',
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (ctrAlas.text.isNotEmpty && ctrTinggi.text.isNotEmpty) {
                  ctrLuas.text = (0.5 *
                          int.parse(ctrAlas.text) *
                          int.parse(ctrTinggi.text))
                      .toString();
                } else {
                  Alert(
                    context: context,
                    type: AlertType.error,
                    title: "Pastikkan semua input box angka terisi",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "OK",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ).show();
                  return;
                }
              });
            },
            child: Text("Hitung !"),
            style: ElevatedButton.styleFrom(fixedSize: const Size(300, 20)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Luas : ${ctrLuas.text}",
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ]),
      ),
    );
  }
}

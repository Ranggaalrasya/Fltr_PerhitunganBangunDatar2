import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class pgPersegiPanjang extends StatefulWidget {
  const pgPersegiPanjang({Key? key}) : super(key: key);

  @override
  State<pgPersegiPanjang> createState() => _pgPersegiPanjangState();
}

class _pgPersegiPanjangState extends State<pgPersegiPanjang> {
  TextEditingController ctrPanjang = new TextEditingController();
  TextEditingController ctrLebar = new TextEditingController();
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
            "Persegi Panjang",
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            controller: ctrPanjang,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Panjang',
              hintText: 'Masukkan Panjang',
            ),
          ),
          Container(
            height: 20,
          ),
          TextField(
            controller: ctrLebar,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Lebar',
              hintText: 'Masukkan Lebar',
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (ctrPanjang.text.isNotEmpty && ctrLebar.text.isNotEmpty) {
                  ctrLuas.text =
                      (int.parse(ctrPanjang.text) * int.parse(ctrLebar.text))
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
                if (ctrPanjang.text.isNotEmpty && ctrLebar.text.isNotEmpty) {
                  ctrKeliling.text = (2 *
                          (int.parse(ctrPanjang.text) +
                              int.parse(ctrLebar.text)))
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
          Text(
            "Keliling : ${ctrKeliling.text}",
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ]),
      ),
    );
  }
}

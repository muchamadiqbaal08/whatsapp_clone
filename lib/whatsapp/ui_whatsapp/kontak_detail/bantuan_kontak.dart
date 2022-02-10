import 'package:flutter/material.dart';

class Bantuan extends StatelessWidget {
  const Bantuan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: const Text("Bantuan kontak"),
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Text(
              "Jika beberapa teman Anda tidak ditampilkandi daftar kontak, kami sarankan langkah-langkah berikut:",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
          ListTile(
            minLeadingWidth: 0.0,
            leading: Icon(Icons.circle, color: Colors.white , size: 9,),
            title: Text(
                "Pastikan nomor telepon teman Anda tersimpan di buku alamt Anda",
                style: TextStyle(color: Colors.white, fontSize: 14)),
          ),
          ListTile(
            minLeadingWidth: 0.0,
            leading: Icon(Icons.circle, color: Colors.white , size: 9,),
            title: Text(
                "Pastikan teman Anda menggunakan WhatsApp Messenger",
                style: TextStyle(color: Colors.white, fontSize: 14)),
          ),
        ],
      ),
    );
  }
}

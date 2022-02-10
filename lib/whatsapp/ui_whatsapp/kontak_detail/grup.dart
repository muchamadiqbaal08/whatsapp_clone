import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp/widget_whatsapp/list_tile_custom.dart';

class Grup extends StatelessWidget {
  const Grup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Grup baru",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Tambah peserta",
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  )
                ],
              ),
              InkWell(onTap: () {}, child: const Icon(Icons.search))
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            ListTileCustom(
                function: () {},
                leading: Image.asset("assets/anya.png"),
                color: Colors.white,
                width: 40,
                height: 40,
                title: const Text("Anya Geraldine",
                    style: TextStyle(color: Colors.white))),
            ListTileCustom(
                function: () {},
                leading: Image.asset("assets/isyana.png"),
                color: Colors.white,
                width: 40,
                height: 40,
                title: const Text("Isyana Sarasvati",
                    style: TextStyle(color: Colors.white))),
          ],
        ),
      ),
    );
  }
}

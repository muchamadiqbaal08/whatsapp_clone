import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp/widget_whatsapp/list_tile_custom.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.camera_alt),
          backgroundColor: Colors.green.shade600,
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ListTileCustom(
              function: () {},
              leading: Image.asset("assets/reza.png"),
              width: 50,
              height: 50,
              title: const Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child:
                    Text("Status saya", style: TextStyle(color: Colors.white)),
              ),
              subtitle: SizedBox(
                width: MediaQuery.of(context).size.width / 1,
                child: const Text(
                  "Ketuk untuk menambahkan pembaruan",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )));
  }
}

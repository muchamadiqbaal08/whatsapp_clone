import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/chat_detail_1.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/chat_detail_2.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/kontak_detail/kontak_chat.dart';
import 'package:whatsapp/whatsapp/widget_whatsapp/list_tile_custom.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const Kontak());
        },
        child: const Icon(Icons.chat),
        backgroundColor: Colors.green.shade600,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(children: [
          ListTileCustom(
            function: () {
              Get.to(const Detail());
            },
            leading: Image.asset("assets/anya.png"),
            width: 50,
            height: 50,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Anya Geraldine",
                    style: TextStyle(fontSize: 12, color: Colors.white)),
                Text("20.19", style: TextStyle(fontSize: 9, color: Colors.grey))
              ],
            ),
            subtitle: const Text("Hai iqbaal",
                style: TextStyle(fontSize: 10, color: Colors.grey)),
          ),
          ListTileCustom(
            function: () {
              Get.to(const Details());
            },
            leading: Image.asset("assets/isyana.png"),
            width: 50,
            height: 50,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Isyana Sarasvati",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                Text("20.30", style: TextStyle(fontSize: 9, color: Colors.grey))
              ],
            ),
            subtitle: const Text("Hello dear",
                style: TextStyle(fontSize: 10, color: Colors.grey)),
          ),
        ]),
      ),
    );
  }
}

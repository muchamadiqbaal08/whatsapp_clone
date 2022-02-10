import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/chat_detail_1.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/chat_detail_2.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/kontak_detail/bantuan_kontak.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/kontak_detail/grup.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/kontak_detail/qr_camera.dart';
import 'package:whatsapp/whatsapp/widget_whatsapp/list_tile_custom.dart';

class KontakCall extends StatelessWidget {
  const KontakCall({Key? key}) : super(key: key);

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
                    Text("Pilih kontak",
                        style: TextStyle(fontSize: 14, color: Colors.white70)),
                    SizedBox(height: 5),
                    Text("2 kontak",
                        style: TextStyle(fontSize: 12, color: Colors.white70))
                  ],
                ),
                Row(children: [
                  InkWell(
                      onTap: () {},
                      child: const Icon(Icons.search, color: Colors.grey)),
                  const SizedBox(width: 15),
                  InkWell(
                      onTap: () {},
                      child: const Icon(Icons.more_vert, color: Colors.grey)),
                ])
              ],
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                ListTileCustom(
                  function: () {
                    Get.to(const Grup());
                  },
                  leading: const Icon(Icons.group, color: Colors.white),
                  color: Colors.green,
                  width: 40,
                  height: 40,
                  title: const Text("Grup baru",
                      style: TextStyle(color: Colors.white)),
                ),
                ListTileCustom(
                  function: () {},
                  leading: const Icon(Icons.person_add, color: Colors.white),
                  color: Colors.green,
                  width: 40,
                  height: 40,
                  title: const Text("Kontak baru",
                      style: TextStyle(color: Colors.white)),
                ),
                ListTileCustom(
                  function: () {},
                  leading: const Icon(Icons.person_add, color: Colors.white),
                  color: Colors.green,
                  width: 40,
                  height: 40,
                  title: const Text("Kontak baru",
                      style: TextStyle(color: Colors.white)),
                  trailing: IconButton(
                      onPressed: () {
                        Get.to(const QrCamera());
                      },
                      icon: const Icon(Icons.qr_code, color: Colors.grey)),
                ),
                ListTileCustom(
                    function: () {
                      Get.to(const Detail());
                    },
                    leading: Image.asset("assets/anya.png"),
                    color: Colors.white,
                    width: 40,
                    height: 40,
                    title: const Text("Anya Geraldine",
                        style: TextStyle(color: Colors.white))),
                ListTileCustom(
                    function: () {
                      Get.to(const Detail());
                    },
                    leading: Image.asset("assets/isyana.png"),
                    color: Colors.white,
                    width: 40,
                    height: 40,
                    title: const Text("Isyana Sarasvati",
                        style: TextStyle(color: Colors.white))),
                ListTileCustom(
                    function: () {
                      Get.to(const Detail());
                    },
                    leading: const Icon(Icons.share, color: Colors.grey),
                    color: Colors.black,
                    width: 40,
                    height: 40,
                    title: const Text("Undang teman",
                        style: TextStyle(color: Colors.white))),
                ListTileCustom(
                    function: () {
                      Get.to(const Detail());
                    },
                    leading: const Icon(Icons.help, color: Colors.grey),
                    color: Colors.black,
                    width: 40,
                    height: 40,
                    title: const Text("Bantuan kontak",
                        style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
        ));
  }
}

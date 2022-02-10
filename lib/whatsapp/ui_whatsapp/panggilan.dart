import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/kontak_detail/kontak_call.dart';
import 'package:whatsapp/whatsapp/widget_whatsapp/list_tile_custom.dart';

class Panggilan extends StatelessWidget {
  const Panggilan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const KontakCall());
        },
        child: const Icon(Icons.add_call),
        backgroundColor: Colors.green.shade600,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            ListTileCustom(
              function: () {},
              leading: Image.asset("assets/anya.png"),
              width: 40,
              height: 40,
              title: const Text("Anya Geraldine",
                  style: TextStyle(color: Colors.white)),
              subtitle: Row(
                children: [
                  InkWell(
                      onTap: () {},
                      child: Transform.rotate(
                        angle: pi / -4,
                        child: const FaIcon(
                          FontAwesomeIcons.arrowLeft,
                          size: 12,
                          color: Colors.red,
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Hari ini 19.00",
                      style: TextStyle(fontSize: 12, color: Colors.grey))
                ],
              ),
              trailing: InkWell(
                  onTap: () {},
                  child: const Icon(Icons.call, color: Colors.green)),
            ),
            ListTileCustom(
              function: () {},
              leading: Image.asset("assets/isyana.png"),
              width: 40,
              height: 40,
              title: const Text("Isyana Sarasvati",
                  style: TextStyle(color: Colors.white)),
              subtitle: Row(
                children: [
                  InkWell(
                      onTap: () {},
                      child: Transform.rotate(
                        angle: pi / -4,
                        child: const FaIcon(
                          FontAwesomeIcons.arrowRight,
                          size: 12,
                          color: Colors.green,
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Hari ini 19.00",
                      style: TextStyle(fontSize: 12, color: Colors.grey))
                ],
              ),
              trailing: InkWell(
                  onTap: () {},
                  child: const Icon(Icons.videocam, color: Colors.green)),
            ),
          ],
        ),
      ),
    );
  }
}

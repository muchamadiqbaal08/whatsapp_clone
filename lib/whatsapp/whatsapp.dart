import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/camera.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/chat.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/panggilan.dart';
import 'package:whatsapp/whatsapp/ui_whatsapp/status.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    String _option;
    List option = [
      "Grup baru",
      "Siaran baru",
      "Perangkat tertaut",
      "Pesan berbintang",
      "Setelan"
    ];
    return Scaffold(
        backgroundColor: Colors.black,
        body: DefaultTabController(
            length: 4,
            child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScorlled) {
                  return [
                    SliverAppBar(
                      backgroundColor: Colors.blueGrey.shade900,
                      automaticallyImplyLeading: false,
                      floating: true,
                      pinned: true,
                      snap: true,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "WhatsApp",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {},
                                  child: const Icon(Icons.search,
                                      color: Colors.grey)),
                              const SizedBox(width: 15),
                              InkWell(
                                  onTap: () {
                                    DropdownButton(
                                        items: option.map((value) {
                                          return DropdownMenuItem(
                                            child: Text(value),
                                            value: value,
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _option = value.toString();
                                          });
                                        });
                                  },
                                  child: const Icon(Icons.more_vert,
                                      color: Colors.grey)),
                            ],
                          )
                        ],
                      ),
                      bottom: const TabBar(
                        labelColor: Color(0xFF0FAB39),
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Color(0xFF0FAB39),
                        isScrollable: true,
                        tabs: [
                          Tab(
                              child: Padding(
                            padding: EdgeInsets.only(right: 4.0),
                            child: Icon(Icons.camera_alt),
                          )),
                          Tab(child: Text("CHAT")),
                          Tab(child: Text("STATUS")),
                          Tab(child: Text("PANGGILAN")),
                        ],
                      ),
                    ),
                  ];
                },
                body: const TabBarView(
                  children: [Camera(), Chat(), Status(), Panggilan()],
                ))));
  }
}

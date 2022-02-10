import 'dart:math';
import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp/whatsapp.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueGrey.shade900,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Get.offAll(const Whatsapp());
                      },
                      child: const Icon(Icons.arrow_back, color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                            width: 35,
                            height: 35,
                            color: Colors.white,
                            child: Image.asset("assets/anya.png"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            "Anya Geraldine",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "20.19",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.videocam, color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.call,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: InkWell(
                        onTap: () {},
                        child:
                            const Icon(Icons.more_vert, color: Colors.white)),
                  )
                ],
              ),
            ],
          )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueGrey.shade800),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.emoji_emotions, color: Colors.grey)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: TextFormField(
                      cursorColor: Colors.green,
                      decoration: const InputDecoration(
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintText: ("Kirim pesan"),
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / -4,
                    child: SizedBox(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.attach_file,
                              color: Colors.grey)),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.camera_alt, color: Colors.grey)),
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                  color: Colors.green,
                  width: 50,
                  height: 50,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.mic, color: Colors.white))),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey.shade900,
                    ),
                    child: const Center(
                      child: Text(
                        "26 Januari 2022",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey.shade900,
                ),
                width: MediaQuery.of(context).size.width / 3,
                height: 40,
                child: const Center(
                    child: Text(
                  "Hai iqbaal",
                  style: TextStyle(color: Colors.white),
                ))),
          ),
        ],
      ),
    );
  }
}

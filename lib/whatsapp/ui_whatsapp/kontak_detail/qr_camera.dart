import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCamera extends StatefulWidget {
  const QrCamera({Key? key}) : super(key: key);

  @override
  _QrCameraState createState() => _QrCameraState();
}

class _QrCameraState extends State<QrCamera> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Kode QR"),
              Row(children: [
                InkWell(
                    onTap: () {},
                    child: const Icon(Icons.share, color: Colors.grey)),
                const SizedBox(width: 15),
                InkWell(
                    onTap: () {},
                    child: const Icon(Icons.more_vert, color: Colors.grey)),
              ])
            ],
          ),
          bottom: const TabBar(
            indicatorColor: Color(0xFF0FAB39),
            tabs: [
              Tab(child: Text("KODE SAYA")),
              Tab(child: Text("PINDAI KODE")),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blueGrey.shade900),
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: MediaQuery.of(context).size.width / 1.2,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                                child: Text("Muchamad Iqbaal Dwi F",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white70)),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 15.0),
                                child: Text("Kontak Whatsapp",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                width: MediaQuery.of(context).size.width / 2.1,
                                height: MediaQuery.of(context).size.width / 2.1,
                                child: QrImage(
                                  data:
                                      "https://api.whatsapp.com/send?phone=62895636172231",
                                  version: QrVersions.auto,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 130,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                              color: Colors.white,
                              width: 40,
                              height: 40,
                              child: Image.asset("assets/reza.png")),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Text(
                          "Kode QR Anda bersifat privat. Jika Anda membagikannya kepada seseorang dia dapat memindainya dengan kamera WhatsApp untuk menambahkan Anda sebagai kontak.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: const [Text("Tab 2")],
            ),
          ),
        ]),
      ),
    );
  }
}

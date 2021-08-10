import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildStoreTitle(),
                    SizedBox(height: 22),
                    buildStoreProduct(),
                    SizedBox(height: 22),
                    Center(
                      child: Text(
                        "BARLAS - 4000",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF0A1034),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Universal Ekim Makinesi",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Universal Seeding Machine Double Disc",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          "Üniversal Ekim Makinemiz traktöre üç nokta askı sistemiyle bağlanan asılır tip bir makinadır. Hareketini tekerlekten almaktadır. Transmisyon sisteminde kademesiz şanzıman kullanılmaktadır. Kademesiz şanzıman sistemi ekim normlarında tek düzeliği ve her ekici ayak için aynı normda tohum atımına olanak sağlar. Sıra arası mesafe ve derinlik ayarı istenilen düzeyde yapılabilmektedir.  ",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 90.0),
                      child: Center(
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          onPressed: () => Navigator.pop(context),
                          color: Colors.deepPurple,
                          child: Text(
                            "Ana Sayfa",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildStoreTitle() {
  return Padding(
    padding: const EdgeInsets.only(top: 14.0),
    child:
        //TITLE
        Text(
      "Mağaza",
      style: TextStyle(
        fontSize: 32,
        color: Color(0xFF0A1034),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildStoreProduct() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Image.asset("assets/images/BARLAS-ON1kirp2.png"),
  );
}

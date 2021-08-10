import 'package:flutter/material.dart';
import 'package:flutter_application/pages/Categories.dart';
import 'package:flutter_application/pages/Profile.dart';
import 'package:flutter_application/pages/Settings.dart';
import 'package:flutter_application/pages/Store.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yükay',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTitle(),
                  //BANNER
                  buildBanner(),
                  //BUTTONS
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildNavigation(
                            text: "Categories",
                            icon: Icons.menu,
                            widget: Categories(),
                            context: context),
                        buildNavigation(
                            text: "Store",
                            icon: Icons.local_grocery_store,
                            widget: Store(),
                            context: context),
                        buildNavigation(
                            text: "Settings",
                            icon: Icons.settings,
                            widget: Settings(),
                            context: context),
                        buildNavigation(
                            text: "Profile",
                            icon: Icons.account_circle,
                            widget: Profile(),
                            context: context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            //SALES
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Sales",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xFF0A1034)),
              ),
            ),
            //SALES ITEMS
            // %50
            SizedBox(height: 22),
            //Ürün Resmi
            Padding(
                padding: EdgeInsets.all(5.0),
                child: Image.asset("assets/images/BARLAS-ON1kirp2.png")),
            SizedBox(height: 20),
            Center(
              child: Text("BARLAS 4000",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF0A1034),
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 5),
            Center(
              child: Text("Universal Ekim Makinası",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 5),
            Center(
              child: Text("(Universal Seeding Machine Double Disc)",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  "Üniversal Ekim Makinemiz traktöre üç nokta askı sistemiyle bağlanan asılır tip bir makinadır. Hareketini tekerlekten almaktadır. Transmisyon sisteminde kademesiz şanzıman kullanılmaktadır. Kademesiz şanzıman sistemi ekim normlarında tek düzeliği ve her ekici ayak için aynı normda tohum atımına olanak sağlar. Sıra arası mesafe ve derinlik ayarı istenilen düzeyde yapılabilmektedir.  ",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 90.0),
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.deepPurple,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Store(),
                    ),
                  );
                },
                child: Text(
                  "Mağazaya Git",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}

Widget buildTitle() {
  return Padding(
    padding: const EdgeInsets.only(top: 14.0),
    child:
        //TITLE
        Text(
      "Home",
      style: TextStyle(
        fontSize: 32,
        color: Color(0xFF0A1034),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildBanner() {
  return Padding(
    padding: EdgeInsets.only(top: 14),
    child: Container(
      width: double.infinity,
      padding:
          EdgeInsets.only(left: 24.0, right: 36.0, top: 14.0, bottom: 28.0),
      decoration: BoxDecoration(
          color: Color(0xFF0001FC), borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "BARLAS 4000",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "TRY 69.360",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Image.asset("assets/images/BARLAS-ON178x52.png")
        ],
      ),
    ),
  );
}

Widget buildNavigation(
    {required String text,
    required IconData icon,
    Widget? widget,
    BuildContext? context}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context!,
        MaterialPageRoute(builder: (context) {
          return widget!;
        }),
      );
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFFE0ECF8)),
          child: Icon(icon, color: Color(0xFF0001FC), size: 18),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
              color: Color(0xFF1F53E4),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

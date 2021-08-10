import 'package:flutter/material.dart';
import 'package:flutter_application/pages/Settings.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildProfileAbout(context),
    );
  }
}

Widget buildProfileAbout(BuildContext context) {
  return Column(
    children: [
      SafeArea(
        child: Container(
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14.0, left: 5.0),
                  child:
                      //TITLE
                      Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(0xFF0A1034),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                buildAbout(
                  context,
                )
              ],
            ),
          ),
        ),
      ),
      buildNavBar(context),
    ],
  );
}

Widget buildAbout(BuildContext context) {
  return Card(
    child: Column(
      children: [
        ListTile(
          title: Text(
            "Fatih HAS",
            style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w500),
          ),
          subtitle: Text("Admin"),
          leading: Icon(
            Icons.account_circle_sharp,
            size: 36.0,
            color: Colors.blue,
          ),
        ),
        ListTile(
          leading: new Icon(
            Icons.email,
            color: Colors.blue,
            size: 26.0,
          ),
          title: Text(
            "Email",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text("fatihhas2609@gmail.com"),
        ),
        ListTile(
          leading: Icon(
            Icons.phone_android,
            color: Colors.blue,
            size: 26.0,
          ),
          title: Text(
            "Phone Number",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text("+90 554 690 7573"),
        ),
        ListTile(
          leading: Icon(
            Icons.date_range_sharp,
            color: Colors.blue,
            size: 26.0,
          ),
          title: Text(
            "Date of Birth",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text("26.09.1997"),
        ),
        ListTile(
          leading: Icon(
            Icons.account_balance_rounded,
            size: 26.0,
            color: Colors.blue,
          ),
          title: Text(
            "Adreess",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
              "100. Yıl Mahallesi, Mehmet İlhan Sok., No:1, Daire: 5, Tekirdağ/ Süleymanpaşa"),
        ),
        ListTile(
          leading: Icon(
            Icons.credit_card_rounded,
            color: Colors.blue,
            size: 26.0,
          ),
          title: Text(
            "Kredi Kartlarım",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text("Finansbank Kartım"),
        ),
      ],
    ),
  );
}

Widget buildNavBar(BuildContext context) {
  return Flexible(
    flex: 2,
    fit: FlexFit.tight,
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
                  ),
                );
              },
              color: Colors.deepPurple[300],
              child: Text(
                "Düzenle",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: () => Navigator.pop(context),
              color: Colors.deepPurple,
              child: Text(
                "Ana Sayfa",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

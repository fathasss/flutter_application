import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildCategoriesNav(context),
    );
  }
}

Widget buildCategoriesNav(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () => Navigator.pop(context),
                  color: Colors.white60,
                  child: Text(
                    "Universal",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () => Navigator.pop(context),
                  color: Colors.white60,
                  child: Text(
                    "Pnömatik",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () => Navigator.pop(context),
                  color: Colors.white60,
                  child: Text(
                    "Ara Çapa",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () => Navigator.pop(context),
                  color: Colors.white60,
                  child: Text(
                    "Gübre Serpme",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
        ],
      ),
    ),
  );
}

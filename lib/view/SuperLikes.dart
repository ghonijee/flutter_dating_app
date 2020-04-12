import 'package:datingapp/components/ListUserLike.dart';
import 'package:datingapp/style/colors.dart';
import 'package:datingapp/style/textStyle.dart';
import 'package:flutter/material.dart';

class SuperLikesPage extends StatelessWidget {
  List<Widget> items = [
    ListUserLike(
      nama: "Anne",
      distance: "50 Km",
    ),
    ListUserLike(
      nama: "Yana",
      distance: "22 Km",
    ),
    ListUserLike(
      nama: "Koha",
      distance: "54 Km",
    ),
    ListUserLike(
      nama: "Frank",
      distance: "40 Km",
    ),
    ListUserLike(
      nama: "David",
      distance: "20 Km",
    ),
    ListUserLike(
      nama: "Marry",
      distance: "45 Km",
    ),
    ListUserLike(
      nama: "Carri",
      distance: "23 Km",
    ),
    ListUserLike(
      nama: "Dummi",
      distance: "13 Km",
    ),
    ListUserLike(
      nama: "Konni",
      distance: "48 Km",
    ),
    ListUserLike(
      nama: "Jun Park",
      distance: "24 Km",
    ),
    ListUserLike(
      nama: "Koiulo",
      distance: "64 Km",
    ),
    ListUserLike(
      nama: "Konha",
      distance: "14 Km",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: primaryColor,
            )),
        actions: <Widget>[
          Center(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Select",
              style: actionMenuStyle,
            ),
          ))
        ],
      ),
      body: Hero(
        tag: "superLikes",
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Super Liked Me",
                style: headingTextStyle.copyWith(color: Colors.black),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.search,
                        color: secondaryTextColor,
                      ),
                    ),
                    hintText: "Search Freind",
                  ),
                ),
              ),
              // SizedBox(height: ,),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: <Widget>[
                      Text("Super Likes", style: superLike),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              "10",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ))
                    ],
                  )),
              Expanded(
                  child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, key) {
                  return items[key];
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}

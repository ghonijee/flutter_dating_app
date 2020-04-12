import 'package:datingapp/components/BannerImage.dart';
import 'package:datingapp/components/ProfileInfoBigcard.dart';
import 'package:datingapp/components/ProfileInfoCard.dart';
import 'package:datingapp/components/userInfo.dart';
import 'package:datingapp/style/colors.dart';
import 'package:datingapp/style/textStyle.dart';
import 'package:datingapp/view/SuperLikes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                flex: 4,
                child: Container(
                  color: primaryColor,
                  child: Stack(
                    children: <Widget>[
                      BannerImage(url: "assets/images/anne.jpeg"),
                      SafeArea(
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("My Profile",
                                      style: headingTextStyle,
                                      textAlign: TextAlign.left)),
                              SizedBox(
                                height: 20,
                              ),
                              UserInfo()
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.only(top: 50.0),
                  color: Colors.white.withOpacity(0.9),
                  child: Table(
                    children: [
                      TableRow(children: [
                        ProfileInfoBigcard(
                          numberText: "13",
                          subNumberText: "New Match",
                          icon: Icon(
                            Icons.star,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                        ProfileInfoBigcard(
                          numberText: "21",
                          subNumberText: "Unmatched me",
                          icon: Image.asset("assets/icons/sad_smiley.png",
                              width: 30, color: Colors.blue),
                        ),
                      ]),
                      TableRow(children: [
                        ProfileInfoBigcard(
                          numberText: "246",
                          subNumberText: "Rematches",
                          icon: Image.asset("assets/icons/checklist.png",
                              width: 30, color: Colors.blue),
                        ),
                        ProfileInfoBigcard(
                          numberText: "42",
                          subNumberText: "All Match",
                          icon: Icon(
                            Icons.sync,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        ProfileInfoBigcard(
                          numberText: "404",
                          subNumberText: "Profile Visitors",
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
//                            Navigator.push((context)=> MaterialPageRoute(builder: (context) => SuperLikesPage()));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SuperLikesPage()));
                          },
                          child: Hero(
                            tag: "superLikes",
                                                      child: ProfileInfoBigcard(
                              numberText: "42",
                              subNumberText: "Super Likes",
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: heightSize * (4 / 9) - 80 / 2,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ProfileInfoCard(
                    number: "59%",
                    subText: "Progress",
                  ),
                  Card(
                    elevation: 3,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        width: widthSize * (1 / 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/icons/pulse.png",
                          height: 40,
                          color: primaryColor,
                        )),
                  ),
                  ProfileInfoCard(
                    number: "100",
                    subText: "Level",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

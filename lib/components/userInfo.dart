import 'package:datingapp/style/textStyle.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final double widthSize = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius:
              BorderRadius.circular(widthSize / 4 / 2),
          child: Image.asset(
            "assets/images/anne.jpeg",
            width: widthSize / 4,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Anne Gretho",
              style: whiteNameTextStyle,
            ),
            Text(
              ", 24",
              style: whiteNameTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/icons/location_pin.png", width: 20, color: Colors.white,),
            SizedBox(height: 40,),
            Text(" 34 Kilometer", style: whiteSubHeadingTextStyle,)
          ],
        )
      ],
    );
  }
}

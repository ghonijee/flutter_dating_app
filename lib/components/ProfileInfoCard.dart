import 'package:datingapp/style/textStyle.dart';
import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  final String number, subText;

  const ProfileInfoCard({Key key, this.number, this.subText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return Card(
      elevation: 3,
      child: Container(
        width: widthSize * (2 / 7),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number,
              style: titleStyle,
            ),
            Text(
              subText,
              style: subTitleStyle,
            )
          ],
        ),
      ),
    );
  }
}
//),

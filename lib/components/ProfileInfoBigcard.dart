import 'package:datingapp/style/textStyle.dart';
import 'package:flutter/material.dart';

class ProfileInfoBigcard extends StatelessWidget {
  final String numberText, subNumberText;
  final Widget icon;

  const ProfileInfoBigcard(
      {Key key, this.numberText, this.subNumberText, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(15, 5, 8, 5),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(alignment: Alignment.centerRight, child: icon),
            Text(numberText, style: titleStyle),
            Text(subNumberText, style: subTitleStyle),
          ],
        ),
      ),
    );
  }
}

import 'package:datingapp/style/colors.dart';
import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  final String url;

  const BannerImage({Key key, @required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          url,
          width: MediaQuery.of(context).size.width,
          height: double.maxFinite,
          fit: BoxFit.cover,
        ),
        Container(
          color: primaryColorOpacity.withOpacity(0.8),
          
        )
      ],
    );
  }
}

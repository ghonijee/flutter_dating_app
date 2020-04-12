import 'package:flutter/material.dart';

class ListUserLike extends StatelessWidget {

  final String nama;
  final String distance;

  const ListUserLike({Key key, this.nama, this.distance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: ClipOval(child: Image.asset("assets/images/anne.jpeg")),
        title: Text(nama),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset("assets/icons/location_pin.png", width: 15, color: Colors.black87,),
            Text(distance)
          ],
        ),
      ),
    );
  }
}
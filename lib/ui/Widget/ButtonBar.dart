import 'package:flutter/material.dart';

class ButtonBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CustomBtn(
            iconName: Icons.notifications,
            color: Color(0xFFC0EEE6),
          ),
          CustomBtn(iconName: Icons.note, color: Color(0xFFC2B7F1)),
          CustomBtn(iconName: Icons.event, color: Color(0xFFF1B7D2)),
          CustomBtn(iconName: Icons.cake, color: Color(0xFFD8B7F1)),
          CustomBtn(iconName: Icons.map, color: Color(0xFFB7C6F1)),
          CustomBtn(iconName: Icons.library_books, color: Color(0xFFB7F1D4)),
          CustomBtn(iconName: Icons.notifications, color: Color(0xFFEEE088)),
        ],
      ),
    );
  }
}

class CustomBtn extends StatelessWidget {
  final IconData iconName;
  final Color color;

  const CustomBtn({Key key, this.iconName, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 70,
        width: 70,
        child: InkWell(
          child: Icon(iconName),
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
    );
  }
}

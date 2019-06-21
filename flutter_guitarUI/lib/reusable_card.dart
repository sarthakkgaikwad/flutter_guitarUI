import 'package:flutter/material.dart';

const kContainerDimensionHeight = 85.0;
const kContainerDimensionWidth = 100.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.title, @required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      height: kContainerDimensionHeight,
      width: kContainerDimensionWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Color(0xFF302E2F)),
      child: Column(
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              subTitle,
              style: TextStyle(fontSize: 12.0, color: Color(0xFF7E7B7C)),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

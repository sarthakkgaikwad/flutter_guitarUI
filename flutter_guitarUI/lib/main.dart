import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';

void main() => runApp(GuitarUI());

class GuitarUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(primaryColor: Color(0xFF070606)),
      home: Scaffold(
        backgroundColor: Color(0xFF070606),
        appBar: AppBar(
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.shopping_basket,
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Text(
                      'Fender',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Baloo'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Player \nTelecaster',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Londrina',
                          letterSpacing: 3.5),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Star(),
                                  Star(),
                                  Star(),
                                  Star(),
                                  Star(),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(
                                '4.8',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            '\$649',
                            style: TextStyle(
                                fontSize: 45.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ReusableCard(
                            title: 'Alnico 5 single', subTitle: 'Pickups'),
                        ReusableCard(
                          title: 'Modern \"C\"',
                          subTitle: ' Neck Profile',
                        ),
                        ReusableCard(
                          title: '22 \nFrets',
                          subTitle: 'Medium Jumbo',
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Image.asset('images/telecaster.png'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFEDA41B),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontFamily: 'Baloo'),
                        ),
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class Star extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Color(0xFFEDA41B),
      size: 20.0,
    );
  }
}

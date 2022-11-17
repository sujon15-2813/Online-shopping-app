// ignore_for_file: prefer_const_constructors

import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop/widgets/ItemAppBar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDECF2),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "images/1.png",
              height: 300,
            ),
          ),
          // ignore: prefer_const_constructors
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50, bottom: 20),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Product Title ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4c53A5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => Icon(
                              Icons.favorite,
                              color: Color(0xFF4c53A5),
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 10,
                                        spreadRadius: 3,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "01 ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4c53A5),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 10,
                                        spreadRadius: 3,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "This Bat  is too good .Virat kholi ,Shakib al hasan use this bat ,has exclusively manyfactured it for Virat kohli. Similar 5 bats have also been manufactured. Hence it is available for limited players ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4c53A5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Size:",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4c53A5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

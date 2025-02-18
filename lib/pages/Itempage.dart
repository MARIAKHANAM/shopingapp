import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Widgets/ItemAppBar.dart';
import '../Widgets/ItemBottomNavBarr.dart';

class Itempage extends StatelessWidget {
  Itempage({super.key});
  List<Color> Clrs = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "images/1.jpeg",
              height: 300,
            ),
          ),


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
                          children: [
                            Text(
                              'product Title',
                              style: TextStyle(
                                  color: Color(0xff921A40),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28),
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
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, index) => Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                onRatingUpdate: (index) {}),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xff921A40),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    '01',
                                    style: TextStyle(
                                        color: Color(0xff921A40),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xff921A40),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
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
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'This is more detailed description of the produce.'
                          ' You can writ here about the product .this is lengthy decription ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Color(0xff921A40),
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Text(
                              'Size',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Color(0xff921A40),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                for (int i = 5; i < 10; i++)
                                  Container(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                        color: Color(0xff921A40),
                                          spreadRadius: 2,
                                          blurRadius:5,
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      i.toString(),
                                      style: TextStyle(
                                          color: Color(0xff921A40),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Text(
                              'Colour',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Color(0xff921A40),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                for (int i = 0; i < 5; i++)
                                  Container(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                      color: Clrs[i],
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        ),
                                      ],
                                    ),

                                  )
                              ],
                            )
                          ],
                        ),
                      ),

                      //
                    ],
                  ),
                ),
              ))
        ],
      ),
      bottomNavigationBar: ItemBottomNavBarr(),
    );
  }
}

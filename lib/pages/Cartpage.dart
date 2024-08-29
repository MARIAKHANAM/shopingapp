import 'dart:ui';

import 'package:flutter/material.dart';

import '../Widgets/CartAppBarr.dart';
import '../Widgets/CartBottomNavBar.dart';
import '../Widgets/CartItemSamples.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBarr(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(35),
                  topRight: Radius.circular(35),
            ),
            ),

            child: Column(
              children: [
                CartItemSamples(),
                 Container(
                 // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
                   margin: EdgeInsets.symmetric(vertical: 20
                   ,horizontal: 10),
                   child: Padding(
                     padding: const EdgeInsets.all(10),
                     child: Row(
                       children: [
                       Container(
                        decoration: BoxDecoration(
                          color: Color(0xff921A40),
                          borderRadius: BorderRadius.circular(20),
                   ),
                         child: Icon(Icons.add,color: Colors.white,),
                       ),
                         Padding(
                           padding:  EdgeInsets.symmetric(vertical: 10),
                           child: Text('Add Coupon code',style: TextStyle(color: Color(0xff921A40),
                               fontSize: 16,fontWeight: FontWeight.bold),),
                         ),
                       ],
                     ),
                   ),
                )

              ],
            ),
          ),
     ],
      ),
     bottomNavigationBar: CartBottomNavBar(),
    );
  }
}

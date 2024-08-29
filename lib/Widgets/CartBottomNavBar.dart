import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total',style: TextStyle(color: Color(0xff921A40),
                  fontSize: 22,fontWeight: FontWeight.bold),),
              Text('\$250',style: TextStyle(color: Colors.red,
                  fontSize: 18,fontWeight: FontWeight.bold),),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff921A40),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text('Check Out',style: TextStyle(color:Colors.white,
                fontSize: 16,fontWeight: FontWeight.bold),),

          )
        ],
      ),
    );
  }
}

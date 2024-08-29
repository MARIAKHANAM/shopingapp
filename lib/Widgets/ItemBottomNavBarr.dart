import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ItemBottomNavBarr extends StatelessWidget {
  const ItemBottomNavBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child:
      Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0.5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0,3),

            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Text("\$120",
          style: TextStyle(
              color: Color(0xff921A40),
              fontWeight: FontWeight.bold,fontSize:25
          ),),
        ElevatedButton.icon(onPressed: () {},
            icon: Icon(CupertinoIcons.cart_badge_plus,color: Colors.white,), label:
          const Text('Add to cart',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,fontSize:16
            ),),
          style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all( Color(0xff921A40),),
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(
              vertical: 13,horizontal: 15,
            )),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>
              (RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
        ),),
      ),
          ],
        ),
      )

    );
  }
}

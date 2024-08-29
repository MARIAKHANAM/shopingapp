import 'package:flutter/material.dart';

class CartAppBarr extends StatelessWidget {
  const CartAppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),

      child: Row(
        children: [
          InkWell(
          onTap: ()
         {
         Navigator.pop(context);
         },
              child:
      Icon(Icons.arrow_back,size:
      30,color: Color(0xff921A40),
      ),
      ),
          Padding(padding: EdgeInsets.only(left: 60),

          child: Text('Cart',style: TextStyle(color: Color(0xff921A40),
              fontSize: 23,fontWeight: FontWeight.bold)
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert,size:
          30,color: Color(0xff921A40),
          ),

],
    ),

    );
  }
}

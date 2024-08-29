import 'package:flutter/material.dart';
import 'package:shopingapp/apiobject.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}
class _CategoriesState extends State<Categories> {
  GetProducts getProducts=GetProducts();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i<13; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [



                  Image.asset("images/$i.jpeg",width: 50,height: 30,
                  ),


                  Text('Sandal',style: TextStyle(color: Color(0xff921A40),
                      fontSize: 16,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
        ],
      ),
    );
  }
}
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Home appbar.dart';
import '../Widgets/CategoriesWidgets.dart';
import '../Widgets/ItemsWidget.dart';

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({super.key});

  @override
  State<ShoppingApp> createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const homeAppBar(),
          Container(

            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,

                            hintText: 'Search here',
                            suffixIcon: Icon(
                              Icons.camera_alt,
                              size: 27,
                              color: Color(0xff921A40),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(

                 alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 10
                  ),
                  child: const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff921A40),
                    ),
                  ),
                ),
                Categories(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  child: const Text('Best Selling',style: TextStyle(color: Color(0xff921A40),fontSize: 25,
                  fontWeight: FontWeight.bold),),
                ),
                const ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70,
        color: const Color(0xff921A40),

        items: const [
          Icon(Icons.home,size: 30,color: Colors.white,
      ),
          Icon(
        CupertinoIcons.cart_fill,size: 30,color: Colors.white,),
          Icon(Icons.list,size: 30,color: Colors.white,),

        ],
      ),
    );

  }
}



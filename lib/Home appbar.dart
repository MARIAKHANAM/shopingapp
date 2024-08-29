import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class homeAppBar extends StatefulWidget {
  const homeAppBar({super.key});

  @override
  State<homeAppBar> createState() => _homeAppBarState();
}

class _homeAppBarState extends State<homeAppBar> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.store,
            size: 30,
            color: Color(0xff921A40),
          ),
          Text(
            'My Shop',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color(0xff921A40),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeColor: Colors.green,
            padding: EdgeInsets.all(7),
            badgeContent: Text(
              "3",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "Cartpage");
              },
              child: Icon(Icons.shopping_bag_outlined,
                size: 32,color: Color(0xff921A40),
              ),
            ),
          ),

        ],
      ),
    );
  }
}


 
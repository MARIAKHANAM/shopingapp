import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,size: 30,
                color:Color(0xff921A40)),

            ),
          Padding(
            padding:  EdgeInsets.only(left: 20),
            child: Text('Paroduct',
              style: TextStyle(
                  color: Color(0xff921A40),
                  fontWeight: FontWeight.bold,fontSize:23
              ),),
          ),
          Spacer(),
          Icon(Icons.favorite,size: 30,color: Colors.red,)

        ],
      ),
    );
  }
}

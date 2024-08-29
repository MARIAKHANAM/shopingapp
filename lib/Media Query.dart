import 'package:flutter/material.dart';

class MediaQu extends StatefulWidget {
  const MediaQu({super.key});

  @override
  State<MediaQu> createState() => _MediaQuState();
}

class _MediaQuState extends State<MediaQu> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    // return Scaffold(
    //   body: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         height: _mediaQuery.size.height*0.5,
    //         width: _mediaQuery.size.width *0.3,
    //         decoration: BoxDecoration(
    //           color: Colors.red,
    //         ),
    //       ),
    //       Container(
    //         width: _mediaQuery.size.width *0.7,
    //         decoration: BoxDecoration(
    //           color: Colors.green,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return Scaffold(
      // body: Builder(builder: (context){
      //   if(_mediaQuery.orientation ==
      //       Orientation.portrait) {
      //     return portraitwidget(_mediaQuery.size);
      //   }
      //   else{
      //       return Iandscapewidget(_mediaQuery.size);
      //     }
      // }

      body: OrientationBuilder(builder: (context, orientation) {
        if (_mediaQuery.orientation == Orientation.portrait) {
          return portraitwidget(_mediaQuery.size);
        } else {
          return Iandscapewidget(_mediaQuery.size);
        }
      }),
    );
  }

  Widget portraitwidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: BoxDecoration(color: Colors.red),
        child: Center(
          child: Text(
            '1first day weather motstly cool',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }

  Widget Iandscapewidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: BoxDecoration(color: Colors.green),
        child: Center(
          child: Text(
            '2cnd',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}

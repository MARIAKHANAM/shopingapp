import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopingapp/pages/Cartpage.dart';
import 'package:shopingapp/pages/Itempage.dart';

import 'pages/HomePge.dart';

void main() => runApp(
  DevicePreview(
    enabled: kDebugMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          "/": (context) => ShoppingApp(),
          "Cartpage": (context) => Cartpage(),
          "Itempage": (context) => Itempage(),
        });
  }
}

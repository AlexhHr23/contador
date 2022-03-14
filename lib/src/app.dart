import 'package:flutter/material.dart';

//import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/contador_page.dart';

class Miapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}

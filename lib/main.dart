import 'package:flutter/material.dart';
import 'screens/homepete.dart';


void main() {
  runApp(TKApp());
}

class TKApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Transaction Keeper",
      home: HomePete(),
    );
  }
}

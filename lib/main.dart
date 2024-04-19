import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(PaytmCloneApp());
}

class PaytmCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paytm Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
      ),
      home: HomeScreen(),
    );
  }
}

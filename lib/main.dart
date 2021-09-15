import 'package:flutter/material.dart';
import 'package:r3lax_stable/login.dart';

void main() {
  runApp(R3LAX());
}

class R3LAX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

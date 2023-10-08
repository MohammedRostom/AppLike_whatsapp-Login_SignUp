import 'package:flutter/material.dart';
import 'package:flutter_applicatioaserwerwr/screens/HomeScreenstaps/settinges.dart';

class story extends StatefulWidget {
  const story({super.key});

  @override
  State<story> createState() => _MyWidgetState();
}

settinges finr = new settinges();

class _MyWidgetState extends State<story> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("${finr.usernameEmailinprofilePage}")),
    );
  }
}

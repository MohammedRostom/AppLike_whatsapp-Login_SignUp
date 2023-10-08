import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:flutter_applicatioaserwerwr/screens/authScreens/Vwithphonenumper.dart';
import 'package:flutter_applicatioaserwerwr/screens/authScreens/codesnd.dart';
import 'package:flutter_applicatioaserwerwr/screens/authScreens/loginscreen.dart';

import 'package:flutter_applicatioaserwerwr/llayoutScreens/home%20_layout.dart';
import 'package:flutter_applicatioaserwerwr/screens/splashAuth%20scereens/splash1.dart';
import 'package:flutter_applicatioaserwerwr/screens/splashAuth%20scereens/splash2.dart';
import 'package:flutter_applicatioaserwerwr/screens/splashAuth%20scereens/splash3.dart';

class splashLayeout extends StatefulWidget {
  @override
  State<splashLayeout> createState() => _AutthLayeoutState();
}

class _AutthLayeoutState extends State<splashLayeout> {
  late splashLayeout dkfjgl;

  int indexs = 0;

  List<Widget> screens = [splash1(), splash2(), splash3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              if (indexs == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => homepagelayout()));
              } else {
                indexs++;
              }
            });
          },
          label: Text("Next")),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: screens[indexs],
    );
  }
}

//

import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_applicatioaserwerwr/firebase_options.dart';
import 'package:flutter_applicatioaserwerwr/llayoutScreens/AutthLayeout.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_applicatioaserwerwr/llayoutScreens/home%20_layout.dart';
import 'package:flutter_applicatioaserwerwr/screens/HomeScreenstaps/chat.dart';
import 'package:flutter_applicatioaserwerwr/screens/HomeScreenstaps/chatMassege.dart';
import 'package:flutter_applicatioaserwerwr/screens/HomeScreenstaps/settinges.dart';
import 'package:flutter_applicatioaserwerwr/screens/HomeScreenstaps/story.dart';
import 'package:flutter_applicatioaserwerwr/screens/authScreens/Vwithphonenumper.dart';
import 'package:flutter_applicatioaserwerwr/screens/authScreens/codesnd.dart';
import 'package:flutter_applicatioaserwerwr/screens/authScreens/loginscreen.dart';
import 'package:flutter_applicatioaserwerwr/screens/authScreens/registers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "splashLayeout": (_) => splashLayeout(),
        "login": (_) => loginscreen(),
        "sgin": (_) => sgin(),
        "homepagelayout": (_) => homepagelayout(),
        "chat": (_) => chat(),
        "story": (_) => story(),
      },
      home: homepagelayout(),
    );
  }
}

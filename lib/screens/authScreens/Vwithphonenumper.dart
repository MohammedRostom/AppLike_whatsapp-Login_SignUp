import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_applicatioaserwerwr/screens/authScreens/codesnd.dart';
import 'package:flutter_applicatioaserwerwr/widget/formfelid.dart';

class Vwithphonenumper extends StatefulWidget {
  Vwithphonenumper({super.key, this.emmil});

  final String? emmil;

  @override
  State<Vwithphonenumper> createState() => _VwithphonenumperState();
}

TextEditingController phonetsxt = TextEditingController();

class _VwithphonenumperState extends State<Vwithphonenumper> {
  @override
  void eVwithpshonenumper() {
    setState(() {});
    Duration delayDuration = Duration(seconds: 2);

    Future.delayed(delayDuration, () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => codesnd(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                  controller: phonetsxt,
                ),
                TextFormField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                  controller: phonetsxt,
                ),
                ElevatedButton(
                    onPressed: () {
                      eVwithpshonenumper();
                    },
                    child: Text("${widget.emmil}"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

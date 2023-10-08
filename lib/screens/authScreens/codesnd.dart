import 'package:flutter/material.dart';
import 'package:flutter_applicatioaserwerwr/llayoutScreens/AutthLayeout.dart';
import 'package:flutter_applicatioaserwerwr/llayoutScreens/home%20_layout.dart';
import 'package:flutter_applicatioaserwerwr/screens/authScreens/Vwithphonenumper.dart';
import 'package:flutter_applicatioaserwerwr/widget/formfelid.dart';

class codesnd extends StatefulWidget {
  const codesnd({super.key});

  @override
  State<codesnd> createState() => _codesndState();
}

class _codesndState extends State<codesnd> {
  void gohomepagelayout() {
    setState(() {});
    Duration delayDuration = Duration(seconds: 2);

    Future.delayed(delayDuration, () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => splashLayeout(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FrormField(
                  hintText: 'codesnd',
                ),
                ElevatedButton(
                    onPressed: () {
                      gohomepagelayout();
                    },
                    child: Text("send"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

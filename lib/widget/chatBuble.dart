import 'package:flutter/material.dart';
import 'package:flutter_applicatioaserwerwr/models/MassegeModel.dart';

class chatBubble extends StatelessWidget {
  const chatBubble(
      {
      //3333333333333333333333######################################
      super.key,
      required this.masssssssss});

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  final MassegeModel? masssssssss;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            )),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text("${masssssssss?.Massege}"),
        ),
      ),
    );
  }
}

class chatBubbleforfrind extends StatelessWidget {
  const chatBubbleforfrind(
      {
      //3333333333333333333333######################################
      super.key,
      required this.chactBubbleforfrind});

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  final MassegeModel? chactBubbleforfrind;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 27, 17),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
              topRight: Radius.circular(25),
            )),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            "${chactBubbleforfrind?.Massege}",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

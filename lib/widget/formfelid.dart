import 'package:flutter/material.dart';

class FrormField extends StatelessWidget {
  FrormField({
    this.hintText,
    this.massegControlter,
    this.onFieldSubmitted,
    this.front_icon,
    this.back_icon,
    TextEditingController,
  });

  String? hintText;
  TextEditingController? massegControlter;
  Function(String)? onFieldSubmitted;
  Widget? front_icon;
  Widget? back_icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        controller: massegControlter,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
            hintText: hintText,
            prefix: front_icon,
            suffix: back_icon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}

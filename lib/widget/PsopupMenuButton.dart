import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_applicatioaserwerwr/screens/HomeScreenstaps/settinges.dart';

class PsopupMenuButton extends StatelessWidget {
  PsopupMenuButton({required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton<int>(
        itemBuilder: (BuildContext context) {
          return List.generate(items.length, (index) {
            return PopupMenuItem(
              child: Text('${items[index]}'),
              value: index + 1,
            );
          });
        },
        onSelected: (value) {
          // Handle selected option
          if (value == items.length - 1) {
            print("object");
          }
        },
      ),
    );
  }
}

class P1sopupMenuButton extends StatelessWidget {
  P1sopupMenuButton({required this.items, this.username});

  final List<String> items;
  String? username;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton<int>(
        itemBuilder: (BuildContext context) {
          return List.generate(items.length, (index) {
            return PopupMenuItem(
              child: Text('${items[index]}'),
              value: index + 1,
            );
          });
        },
        onSelected: (value) {
          // Handle selected option
          if (value == items.length) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      settinges(usernameEmailinprofilePage: username),
                ));
          }
        },
      ),
    );
  }
}

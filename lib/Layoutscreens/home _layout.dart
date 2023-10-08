import 'package:flutter/material.dart';
import 'package:flutter_applicatioaserwerwr/Func/acountenclass.dart';
import 'package:flutter_applicatioaserwerwr/screens/HomeScreenstaps/chat.dart';
import 'package:flutter_applicatioaserwerwr/screens/HomeScreenstaps/story.dart';
import 'package:flutter_applicatioaserwerwr/widget/PsopupMenuButton.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepagelayout extends StatefulWidget {
  homepagelayout({this.nameuser});

  final String? nameuser;

  @override
  State<homepagelayout> createState() => _homepageState();
}

class _homepageState extends State<homepagelayout> {
  List<Widget> tapsscreens = [];

  @override
  void initState() {
    super.initState();
    print(
        "+++++++++++++++++++++++++++++++++++++++++++++++++${widget.nameuser}");
    tapsscreens = [
      chat(emaiWWWWWWW: widget.nameuser),
      story(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tapsscreens.length,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            P1sopupMenuButton(
              username: widget.nameuser,
              items: [
                "Follow Developer",
                "Message Scheduler",
                "Mass Message Sender",
                "Restart App",
                "Message a number",
                "Settings"
              ],
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("chat"),
              ),
              Tab(
                child: Text("story"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: tapsscreens,
        ),
      ),
    );
  }
}

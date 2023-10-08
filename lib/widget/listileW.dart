import 'package:flutter/material.dart';
import 'package:flutter_applicatioaserwerwr/models/usernodels.dart';
import 'package:flutter_applicatioaserwerwr/screens/HomeScreenstaps/chatMassege.dart';

class ListTielw extends StatelessWidget {
  ListTielw({
    required this.post,
    required this.email,
  });
  final email;
  final usernodels post;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => ChatMessage(
                      eemial: email,
                      KTitle: post.phone,
                      Kdiscreptin: post.firstName,
                      thumbnailUrl: post.image,
                    )));
      },
      child: ListTile(
        leading: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.red,
                  width: 4,
                ),
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("${post.image}"),
              ),
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 8.5,
              backgroundColor: Colors.green,
            ),
          ],
        ),
        trailing: Text(
          "1:20 Am",
          textAlign: TextAlign.start,
        ),
        title: Text("${post.phone}"),
        subtitle: Text(
          "${post.firstName}",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(),
        ),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_applicatioaserwerwr/models/MassegeModel.dart';
import 'package:flutter_applicatioaserwerwr/widget/PsopupMenuButton.dart';
import 'package:flutter_applicatioaserwerwr/widget/chatBuble.dart';
import 'package:flutter_applicatioaserwerwr/widget/formfelid.dart';

class ChatMessage extends StatefulWidget {
  ChatMessage(
      {Key? key,
      this.KTitle,
      this.Kdiscreptin,
      this.thumbnailUrl,
      this.eemial});
  final KTitle;
  final Kdiscreptin;
  final thumbnailUrl;
  final eemial;

  @override
  State<ChatMessage> createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {
  TextEditingController messageController = TextEditingController();
  ScrollController scrollController = ScrollController();

  CollectionReference messagesCollection =
      FirebaseFirestore.instance.collection("Messages");
  static const Kcrunnttime = "currntTime";
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: messagesCollection.orderBy(Kcrunnttime).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<MassegeModel> messagesList = [];

          List<DocumentSnapshot> dataList = snapshot.data!.docs;

          dataList.forEach((doc) {
            messagesList
                .add(MassegeModel.fromJson(doc.data() as Map<String, dynamic>));
          });

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 0, 27, 17),
              actions: [
                IconButton(
                  icon: const Icon(Icons.videocam_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.call),
                  onPressed: () {},
                ),
                PsopupMenuButton(
                  items: [
                    "View contact",
                    "Media, links, and docs",
                    "Go To First Message",
                    "Search",
                    "Disappearing messages",
                    "More",
                    "Disappearing messages",
                    "View contact",
                    "Media, links, and docs",
                    "Go To First Message",
                    "Search",
                    "Disappearing messages",
                    "More",
                    "Disappearing messages",
                  ],
                ),
              ],
              leadingWidth: 80,
              leading: IconButton(
                onPressed: () {},
                icon: Row(
                  children: [
                    Icon(Icons.arrow_back),
                    Container(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("${widget.thumbnailUrl}"),
                        radius: 20,
                      ),
                    ),
                  ],
                ),
              ),
              title: Container(
                child: Text(
                  "${widget.KTitle}",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    // Reverse the order of messages to show the latest at the bottom
                    itemCount: messagesList.length,
                    itemBuilder: (context, index) {
                      return messagesList[index].id == widget.eemial
                          ? chatBubble(
                              masssssssss: messagesList[index],
                            )
                          : chatBubbleforfrind(
                              chactBubbleforfrind: messagesList[index]);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: "Send message",
                      suffixIcon: IconButton(
                        onPressed: () {
                          messagesCollection.add({
                            "Massege": messageController.text,
                            Kcrunnttime: DateTime.now(),
                            "id": widget.eemial,
                          });
                          messageController.clear();
                          scrollController.animateTo(
                              scrollController.position.maxScrollExtent,
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeIn);
                        },
                        icon: Icon(Icons.send),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 0, 27, 17),
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
              ),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

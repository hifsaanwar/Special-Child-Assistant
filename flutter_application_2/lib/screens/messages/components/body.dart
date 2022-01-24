import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/models/ChatMessage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatefulWidget {
  Body({Key? key, required this.groupId, required this.groupName})
      : super(key: key);

  String groupId;
  String groupName;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<ChatMessage> chatMessages = [];
  void observeMessages() {
    var msgRef = FirebaseDatabase()
        .reference()
        .child("groupmessages")
        .child(widget.groupId);
    msgRef.onChildAdded.listen((Event event) {
      print('Child added: ${event.snapshot.key}');
      var msgRef = FirebaseDatabase()
          .reference()
          .child("messages")
          .child(event.snapshot.key);

      var data;
      var message;

      msgRef.once().then((snap) => {
            data = new Map<String, dynamic>.from(snap.value),
            message = ChatMessage.fromRTDB(data),
            chatMessages.add(message),
            setState(() => {
                  chatMessages.sort(
                      (msg1, msg2) => msg1.timeStamp.compareTo(msg2.timeStamp))
                })
          });
    }, onError: (Object o) {
      final DatabaseError error = o as DatabaseError;
      print('Error: ${error.code} ${error.message}');
    });
  }

  @override
  void initState() {
    super.initState();

    observeMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: chatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: chatMessages[index]),
            ),
          ),
        ),
        ChatInputField(
          groupId: widget.groupId,
          groupName: widget.groupName,
        ),
      ],
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_2/components/filled_outline_button.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/models/Chat.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter_application_2/models/Group.dart';
import 'package:flutter_application_2/screens/messages/message_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_2/models/ChatMessage.dart';
import 'package:flutter/material.dart';

import 'chat_card.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Contact> selectedContacts = [];
  List<ChatMessage> messages = [];

  // void observeGroups() {
  //   String currentUserUid = FirebaseAuth.instance.currentUser!.uid.toString();

  //   var userGroupsRef = FirebaseDatabase()
  //       .reference()
  //       .child("Users")
  //       .child(currentUserUid)
  //       .child("groups");

  //   userGroupsRef.onChildAdded.listen((Event event) {
  //     print('Child: ${event.snapshot.value}');

  //     Group group = new Group();
  //     group.groupID = event.snapshot.value;

  //     var groupRef = FirebaseDatabase()
  //         .reference()
  //         .child("Groups")
  //         .child(event.snapshot.value);
  //     groupRef.onValue.listen((event) => {
  //           group.groupName = event.snapshot.value["name"],
  //           // setState(() => groups.add(group))
  //         });
  //   }, onError: (Object o) {
  //     final DatabaseError error = o as DatabaseError;
  //     print('Error: ${error.code} ${error.message}');
  //   });
  // }

  void observeChats() async {
    var data;
    var message;
    var groupID;
    var messagesDic = <String, ChatMessage>{};
    String currentUserUid = FirebaseAuth.instance.currentUser!.uid.toString();
    var userMsgRef = FirebaseDatabase()
        .reference()
        .child("user-messages")
        .child(currentUserUid);
    var msgRef = FirebaseDatabase().reference().child("messages");

    userMsgRef.onChildAdded.listen((event) {
      msgRef.child(event.snapshot.key).once().then((snapshot) => {
            data = new Map<String, dynamic>.from(snapshot.value),
            groupID = data["groupID"],
            print("group: ${data["groupID"]}"),
            message = ChatMessage.fromRTDB(data),
            messagesDic[groupID] = message,
            messages = messagesDic.values.toList(),
            setState(() => messages
                .sort((msg1, msg2) => msg2.timeStamp.compareTo(msg1.timeStamp)))
          });
    });
  }

  @override
  void initState() {
    super.initState();
    //observeGroups();
    observeChats();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) => ChatCard(
              chat: Chat.fromMessage(messages.elementAt(index)),
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(
                      // members: selectedContacts,
                      groupName: messages.elementAt(index).groupName,
                      groupId: messages.elementAt(index).groupID),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

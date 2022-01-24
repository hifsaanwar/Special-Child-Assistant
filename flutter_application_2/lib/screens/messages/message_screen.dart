import 'package:contacts_service/contacts_service.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/ChatMessage.dart';
import 'dart:collection';
import 'components/body.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({
    Key? key,
    //required this.members,
    required this.groupName,
    required this.groupId,
  }) : super(key: key);

  // Declare a field that holds the Todo.
  //final List<ChatMessage> messages;

  final String groupName;
  final String groupId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(
        groupId: groupId,
        groupName: groupName,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                groupName,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Group members",
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.local_phone),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}

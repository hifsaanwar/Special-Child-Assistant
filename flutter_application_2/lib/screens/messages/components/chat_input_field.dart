import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_2/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';
import '../../../constants.dart';
import 'dart:collection';

class ChatInputField extends StatelessWidget {
  ChatInputField({Key? key, required this.groupId, required this.groupName})
      : super(key: key);

  String groupId;
  String groupName;

  var currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    String? message;
    var _controller = TextEditingController();
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.attach_file, color: kPrimaryColor),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
            ),
            SizedBox(width: kDefaultPadding / 2.5),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.75,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    SizedBox(width: kDefaultPadding / 4),
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        onChanged: (text) {
                          message = text;
                        },
                        decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        print('attach file');
                      },
                      icon: Icon(
                        Icons.mic,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.64),
                      ),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    ),
                    SizedBox(width: kDefaultPadding / 4),
                    IconButton(
                      onPressed: () {
                        print('camera pressed');
                      },
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.64),
                      ),
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: kDefaultPadding / 1.5),
            IconButton(
              onPressed: () {
                _controller.clear();
                var uuid = Uuid();
                var msgId = uuid.v1();
                var msgRef = FirebaseDatabase()
                    .reference()
                    .child("messages")
                    .child(msgId);
                Map values = new Map<String, String>();
                var currentUserUid =
                    FirebaseAuth.instance.currentUser!.uid.toString();
                values["fromUUID"] = currentUserUid;
                values["text"] = message;
                values["timestamp"] =
                    DateTime.now().millisecondsSinceEpoch.toString();
                values["groupID"] = groupId;
                values["groupName"] = groupName;
                values["isSeen"] = "false";
                msgRef.set(values);

                FirebaseDatabase()
                    .reference()
                    .child("user-messages")
                    .child(currentUserUid)
                    .child(msgId)
                    .set("");

                FirebaseDatabase()
                    .reference()
                    .child("groupmessages")
                    .child(groupId)
                    .child(msgId)
                    .set("");
              },
              icon: Icon(Icons.send, color: kPrimaryColor),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              iconSize: 30,
            )
          ],
        ),
      ),
    );
  }
}

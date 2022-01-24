import 'package:flutter_application_2/models/ChatMessage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AudioMessage extends StatelessWidget {
  final ChatMessage? message;

  const AudioMessage({Key? key, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool? isSender;
    String currentUserUid = FirebaseAuth.instance.currentUser!.uid.toString();
    if (currentUserUid == message!.fromUUID) {
      isSender = true;
    } else {
      isSender = false;
    }
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75,
        vertical: kDefaultPadding / 2.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kPrimaryColor.withOpacity(isSender ? 1 : 0.1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: isSender ? Colors.white : kPrimaryColor,
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: isSender
                        ? Colors.white
                        : kPrimaryColor.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: isSender ? Colors.white : kPrimaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "0.37",
            style:
                TextStyle(fontSize: 12, color: isSender ? Colors.white : null),
          ),
        ],
      ),
    );
  }
}

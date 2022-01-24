import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final String fromUUID;
  final String groupID;
  final String groupName;
  final String timeStamp;

  ChatMessage({
    this.text = '',
    required this.messageType,
    required this.messageStatus,
    required this.fromUUID,
    required this.groupID,
    required this.groupName,
    required this.timeStamp,
  });

  factory ChatMessage.fromRTDB(Map<String, dynamic> data) {
    ChatMessageType type;
    MessageStatus status;
    switch (data["text"]) {
      case "audio":
        type = ChatMessageType.audio;
        break;
      case "video":
        type = ChatMessageType.video;
        break;
      case "image":
        type = ChatMessageType.image;
        break;
      default:
        type = ChatMessageType.text;
    }

    switch (data["isSeen"]) {
      case "true":
        status = MessageStatus.viewed;
        break;
      default:
        status = MessageStatus.not_view;
    }

    return ChatMessage(
        messageType: type,
        messageStatus: status,
        fromUUID: data["fromUUID"],
        groupID: data["groupID"],
        groupName: data["groupName"],
        timeStamp: data["timestamp"],
        text: data["text"]);
  }
}

//List demeChatMessages = [
  // ChatMessage(
  //   text: "Hi Sajol,",
  //   messageType: ChatMessageType.text,
  //   messageStatus: MessageStatus.viewed,

  // ),
  // ChatMessage(
  //   text: "Hello, How are you?",
  //   messageType: ChatMessageType.text,
  //   messageStatus: MessageStatus.viewed,
  //   isSender: true,
  // ),
  // ChatMessage(
  //   text: "",
  //   messageType: ChatMessageType.audio,
  //   messageStatus: MessageStatus.viewed,
  //   isSender: false,
  // ),
  // ChatMessage(
  //   text: "",
  //   messageType: ChatMessageType.video,
  //   messageStatus: MessageStatus.viewed,
  //   isSender: true,
  // ),
  // ChatMessage(
  //   text: "Error happend",
  //   messageType: ChatMessageType.text,
  //   messageStatus: MessageStatus.not_sent,
  //   isSender: true,
  // ),
  // ChatMessage(
  //   text: "",
  //   messageType: ChatMessageType.image,
  //   messageStatus: MessageStatus.viewed,
  //   isSender: false,
  // ),
  // ChatMessage(
  //   text: "Glad you like it",
  //   messageType: ChatMessageType.text,
  //   messageStatus: MessageStatus.not_view,
  //   isSender: true,
  // ),
//];

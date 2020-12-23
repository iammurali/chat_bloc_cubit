import 'package:chat_app/core/components/chat_message.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ChatMessage(
            message: "Hello World!, This is the first message.",
            messageType: MessageType.sent,
            showTime: true,
            time: "1 hr ago",
          ),
          ChatMessage(
            message: "Typing another message from the input box.",
            messageType: MessageType.sent,
            showTime: true,
            time: "45 mins ago",
          ),
          ChatMessage(
            message: "Message Length Small.",
            showTime: true,
            time: "30 mins ago",
          ),
          ChatMessage(
            message:
                "Message Length Large. This message has more text to configure the size of the message box.",
            showTime: true,
            time: "25 mins ago",
          ),
          ChatMessage(
            message: "Meet me tomorrow at the coffee shop.",
            showTime: true,
            time: "20 mins ago",
          ),
          ChatMessage(
            message: "Around 11 o'clock.",
            showTime: true,
            messageType: MessageType.sent,
            time: "12 mins ago",
          ),
          ChatMessage(
            message:
                "Flat Social UI kit is going really well. Hope this finishes soon.",
            showTime: true,
            messageType: MessageType.sent,
            time: "10 mins ago",
          ),
          ChatMessage(
            message:
                "Flat Social UI kit is going really well. Hope this finishes soon.",
            showTime: true,
            time: "2 mins ago",
          ),
        ],
      ),
    );
  }
}

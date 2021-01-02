import 'package:flutter/material.dart';

enum MessageType { sent, received }

class ChatMessage extends StatelessWidget {
  final String message;
  final MessageType messageType;
  final Color backgroundColor;
  final Color textColor;
  final String time;
  final bool showTime;
  final double maxWidth;
  final double minWidth;

  ChatMessage(
      {this.message,
      this.messageType,
      this.backgroundColor,
      this.textColor,
      this.time,
      this.showTime,
      this.minWidth,
      this.maxWidth});

  CrossAxisAlignment messageAlignment() {
    if (messageType == null || messageType == MessageType.received) {
      return CrossAxisAlignment.start;
    } else {
      return CrossAxisAlignment.end;
    }
  }

  double topLeftRadius() {
    if (messageType == null || messageType == MessageType.received) {
      return 0.0;
    } else {
      return 12.0;
    }
  }

  double topRightRadius() {
    if (messageType == null || messageType == MessageType.received) {
      return 12.0;
    } else {
      return 0.0;
    }
  }

  Color messageBgColor(BuildContext context) {
    if (messageType == null || messageType == MessageType.received) {
      return Colors.black87;
    } else {
      return Colors.white70;
    }
  }

  Gradient messageGradientColor(BuildContext context) {
    if (messageType == null || messageType == MessageType.received) {
      return LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [Color.fromRGBO(69, 69, 69, 1), Color.fromRGBO(43, 43, 43, 1)],
      );
    } else {
      return null;
    }
  }

  Color messageTextColor(BuildContext context) {
    if (messageType == null || messageType == MessageType.received) {
      return Color(0XFFF1F1F1);
    } else {
      return Color(0XFF1C1C1C);
    }
  }

  Text messageTime() {
    if (showTime != null && showTime == true) {
      return Text(
        time ?? "Time",
        style: TextStyle(
          fontSize: 12.0,
          color: Color(0xFF666666),
        ),
      );
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 24.0,
      ),
      child: Column(
        crossAxisAlignment: messageAlignment(),
        children: [
          Container(
            constraints: BoxConstraints(
                minWidth: minWidth ?? 100.0, maxWidth: maxWidth ?? 250.0),
            decoration: BoxDecoration(
              gradient: messageGradientColor(context),
              color: backgroundColor ?? messageBgColor(context),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
                bottomLeft: Radius.circular(topLeftRadius()),
                bottomRight: Radius.circular(topRightRadius()),
              ),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 16.0,
            ),
            child: Column(
              crossAxisAlignment: messageType == null
                  ? CrossAxisAlignment.start
                  : messageType == MessageType.received
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
              children: [
                Text(
                  message ?? "Message here...",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: textColor ?? messageTextColor(context)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0.0,
                  ),
                  child: messageTime(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

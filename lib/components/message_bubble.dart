import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool isMe;

  MessageBubble(this.sender, this.text, this.isMe);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            !isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            '$sender',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
            ),
          ),
          Bubble(
            margin: BubbleEdges.only(top: 10),
            radius: Radius.elliptical(5.0,20.0),
            elevation: 4.0,
            alignment: !isMe ? Alignment.topRight : Alignment.topLeft,
            nipWidth: 20,
            nipHeight: 12,
            nip: isMe ? BubbleNip.leftBottom : BubbleNip.rightBottom,
            color: isMe ? Colors.lightBlueAccent : Colors.white,
            child: Text('$text', textAlign: !isMe ? TextAlign.left : TextAlign.right),
          ),
        ],
      ),
    );
  }
}

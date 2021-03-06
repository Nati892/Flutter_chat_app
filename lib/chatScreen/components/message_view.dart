import 'package:flutter/material.dart';
import 'package:flutter_chat_app/data/fakeRepo.dart';
import '../../data/MessageData.dart';

class MessageView extends StatelessWidget {
  MessageView(this.msg, {Key? key}) : super(key: key);
  final MessageData msg;
  bool isSender = false;
  Alignment x = Alignment.centerLeft;

  @override
  Widget build(BuildContext context) {
    if (msg.getSender()?.getId() == FakeRepo.me.getId()) {
      x = Alignment.centerRight;
      isSender = true;
    }

    return Align(
      child: Row(
        children: [
          if (!isSender) Spacer(),
          Container(
            color: Colors.blue,
            child: Align(
                alignment: x,
                child: Padding(
                  child: Text(msg.getText()),
                  padding: EdgeInsets.all(12.0),
                )),
          ),
          if (isSender) Spacer(),
        ],
      ),
    );
  }
}

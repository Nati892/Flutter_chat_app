import 'package:flutter/material.dart';
import 'package:flutter_chat_app/chatScreen/components/messageListView.dart';
import 'package:flutter_chat_app/data/fakeRepo.dart';

class ChatScreen extends StatelessWidget {
  static final route = "ChatSscreen";

  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: messageListView(),
      ),
    );
  }
}

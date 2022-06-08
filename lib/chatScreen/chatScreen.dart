import 'package:flutter/material.dart';
import 'package:flutter_chat_app/chatScreen/chatModel.dart';
import 'package:flutter_chat_app/chatScreen/components/chat_bottom_bar.dart';
import 'package:flutter_chat_app/chatScreen/components/messageListView.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  static final route = "ChatSscreen";

  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => ChatModel(0),
        child: Center(
          child: Column(
            children: [
              Expanded(child: messageListView()),
              ChatBottomBar()
            ],
          ),
        ),
      ),
    
    );
  }
}

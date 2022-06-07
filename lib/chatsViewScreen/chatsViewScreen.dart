import 'package:flutter/material.dart';
import 'package:flutter_chat_app/chatScreen/chatScreen.dart';

class ChatsViewScreen extends StatelessWidget {
  static final route = "ChatsViewScreen";
  const ChatsViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        children: [
          Text("all chat heads go here"),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ChatScreen.route);
              },
              child: Text("go to sample chat"))
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
   static final route = "ChatSscreen";

  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("chat screen"),
      ),
    );
  }
}



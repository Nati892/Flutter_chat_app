import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../chatModel.dart';

class ChatBottomBar extends StatefulWidget {
  const ChatBottomBar({Key? key}) : super(key: key);

  @override
  State<ChatBottomBar> createState() => _ChatBottomBarState();
}

class _ChatBottomBarState extends State<ChatBottomBar> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          Expanded(
              child: TextField(
            controller: _controller,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'message...',
            ),
          )),
          IconButton(
              onPressed: () {
                final prov = Provider.of<ChatModel>(context, listen: false);
                prov.easyAddSent(_controller.text);
                _controller.text = "";
                
              },
              icon: Icon(Icons.send))
        ],
      ),
    );
  }
}

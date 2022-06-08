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
    final prov = Provider.of<ChatModel>(context, listen: false);
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
                prov.easyAddSent(_controller.text);
                _controller.text = "";//clearing text field

                Future.delayed(const Duration(milliseconds: 20), () {//need to wait a bit for listview to rebuild
                  prov.getScrollController().jumpTo(
                      prov.getScrollController().position.maxScrollExtent);
                });
              },
              icon: Icon(Icons.send))
        ],
      ),
    );
  }
}

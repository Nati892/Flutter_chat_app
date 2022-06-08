import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_app/chatScreen/chatModel.dart';
import 'package:flutter_chat_app/chatScreen/components/message_view.dart';
import 'package:provider/provider.dart';
import '../../data/MessageData.dart';

class messageListView extends StatelessWidget {
  messageListView({Key? key}) : super(key: key);

  List<MessageData> lst = List.empty();

  @override
  Widget build(BuildContext context) {
    List<MessageData> msgs = Provider.of<ChatModel>(context).messageList;
    return Container(
      child: Column(
        children: [
          IconButton(
              onPressed: () {
                final prov = Provider.of<ChatModel>(context, listen: false);
                prov.easyAddSent("text");
              },
              icon: Icon(Icons.send)),
          Expanded(
            child: ListView(
              children: msgs.map((e) => MessageView(e)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

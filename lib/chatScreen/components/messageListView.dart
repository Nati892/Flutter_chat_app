import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_app/chatScreen/chatModel.dart';
import 'package:flutter_chat_app/chatScreen/components/message_view.dart';
import 'package:provider/provider.dart';
import '../../data/MessageData.dart';

class messageListView extends StatelessWidget {
  messageListView({Key? key}) : super(key: key);
  List<MessageData> lst = List.empty();
  ChatModel? provider;
  bool ScrolledOnBuild = false;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<ChatModel>(context);
    WidgetsBinding.instance.addPostFrameCallback((_) => {
          if (!ScrolledOnBuild)
            {
              provider!.getScrollController().jumpTo(
                  provider!.getScrollController().position.maxScrollExtent)
            }
        });

 WidgetsBinding.instance.addPostFrameCallback((_) => {
ScrolledOnBuild=true
 });


    List<MessageData> msgs = provider!.messageList;
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              controller: provider!.getScrollController(),
              children: msgs.map((e) => MessageView(e)).toList(),
            ),
          ),
        ],
      ),
    );
  }


}

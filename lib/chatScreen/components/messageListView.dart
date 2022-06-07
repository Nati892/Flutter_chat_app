import 'package:flutter/widgets.dart';
import 'package:flutter_chat_app/chatScreen/components/message_view.dart';
import 'package:flutter_chat_app/data/fakeRepo.dart';
import '../../data/MessageData.dart';

class messageListView extends StatelessWidget {
  messageListView({Key? key}) : super(key: key);

  List<MessageData> lst = List.empty();

  @override
  Widget build(BuildContext context) {
    lst = FakeRepo().getChatMessages();
    return Container(
      child: ListView(
        children: lst.map((e) => MessageView(e)).toList(),
      ),
    );
  }
}

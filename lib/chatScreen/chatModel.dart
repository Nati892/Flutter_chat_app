import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_app/data/MessageData.dart';
import 'package:flutter_chat_app/data/fakeRepo.dart';

class ChatModel extends ChangeNotifier {
  List<MessageData> messageList = List.empty();

  void initList(int userId) {
    //id is used to get the right messages from the right user you have a chat with, not used right now.
    //will change to chat id
    for (MessageData element in FakeRepo().getChatMessages()) {
      messageList.add(element);
    }
  }

  void addMessage(MessageData msg) {
    messageList.add(msg);
    notifyListeners();
  }

  void deleteMessage(int id) {
    messageList.removeWhere((element) => element.getId() == id);
    notifyListeners();
  }
}

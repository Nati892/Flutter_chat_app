import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_app/data/MessageData.dart';
import 'package:flutter_chat_app/data/fakeRepo.dart';

class ChatModel extends ChangeNotifier {
  List<MessageData> messageList = [];
  late ScrollController _controller;// controller for the messages listview
  int otherId = 0;

  ChatModel(int otherId) {
    _controller = ScrollController();
    this.otherId = otherId;
    for (MessageData element in FakeRepo().getChatMessages()) {
      messageList.add(element);
    }
  }

  void addMessage(MessageData msg) {
    messageList.add(msg);
    notifyListeners();
  }

  ScrollController getScrollController() {
    return this._controller;
  }

  void easyAddSent(String text) {
    MessageData msg = new MessageData();
    msg.setText(text);
    msg.set_sender(FakeRepo.me);
    addMessage(msg);
  }

  void easyAddRecieved(String text) {
    MessageData msg = new MessageData();
    msg.setText(text);
    msg.set_sender(FakeRepo.otherUser);
    addMessage(msg);
  }

  void deleteMessage(int id) {
    messageList.removeWhere((element) => element.getId() == id);
    notifyListeners();
  }

  int getOtherId() {
    return this.otherId;
  }
}

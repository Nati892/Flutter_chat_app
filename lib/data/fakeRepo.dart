import 'package:flutter_chat_app/data/MessageData.dart';
import 'package:flutter_chat_app/data/UserData.dart';

class FakeRepo {
 static UserData me = UserData("me", "again", "1234567890", "someOne@gmail.com",
      UserType.talent, GenderType.secret);
 static UserData otherUser = UserData("other", "guy", "1231231231",
      "someOtherGuy@gmail.com", UserType.talent, GenderType.female);

  UserData getMainUser() {
    return me;
  }

  UserData getOtherUser() {
    return otherUser;
  }

  List<MessageData> getChatMessages() {
    List<MessageData> returnedList = List.empty();
    for (var i = 0; i < 100; i++) {
      MessageData msg = new MessageData();
      switch (i % 8) {
        case 0:
          msg.setText("how you doin???");
          msg.set_sender(otherUser);
          msg.set_receiver(me);
          break;
        case 1:
          msg.setText("Can tou fix my printer?");
          msg.set_sender(otherUser);
          msg.set_receiver(me);
          break;
        case 2:
          msg.setText("The earth is a pizza!");
          msg.set_sender(otherUser);
          msg.set_receiver(me);
          break;
        case 3:
          msg.setText(
              "Why do we ask stupid questions when we should actually be chumming down food?\n If god was with us then android wasnt");
          msg.set_sender(otherUser);
          msg.set_receiver(me);

          break;
        case 4:
          msg.setText("awas489");
          msg.set_sender(me);
          msg.set_receiver(otherUser);
          break;
        case 5:
          msg.setText("being talented is lucky, but its not enough");
          msg.set_sender(me);
          msg.set_receiver(otherUser);

          break;
        case 6:
          msg.setText("russia is putin's plate of blin");
          msg.set_sender(me);
          msg.set_receiver(otherUser);

          break;
        case 7:
          msg.setText(
              "me and you is 2, but add you and me and we got 4 => 2=infinity");
          msg.set_sender(me);
          msg.set_receiver(otherUser);

          break;
        default:
      }
      returnedList.add(msg);
    }
    return returnedList;
  }
}

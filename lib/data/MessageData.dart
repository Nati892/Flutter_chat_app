import 'package:flutter_chat_app/data/UserData.dart';

enum MessageContentType {
  text,
  image,
  video,
  audioRecording,
  sticker,
  postReference,
  storyReference,
  trackReference,
  userPageReference,
  link,
  file,
  contact,
  location,
  //add more types here
}

class MessageData {
  int _id = 0;
  int _origin_id = 0; //used to track forworded messages
  UserData? _sender;
  UserData? _receiver;
  DateTime? _time_sent;
  DateTime? _time_received_by_server;
  DateTime? _time_received_by_user;
  DateTime? _time_seen_by_user;
  bool _forworded = false;
  MessageContentType _messageContentType = MessageContentType.text;
}

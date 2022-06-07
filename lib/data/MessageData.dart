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

//TODO this class is not complete in any way, only has basic functionality
class MessageData {
  static int topId = 0;
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
  String _text = "";

  void advanceId() {
    topId++;
    this._id = _id;
  }

//setters
  void setOriginId(int id) {
    this._origin_id = id;
  }

  void set_sender(UserData sndr) {
    this._sender = sndr;
  }

  void set_receiver(UserData rcvr) {
    this._receiver = rcvr;
  }

  void setTimeRecievedByServer(DateTime dt) {
    this._time_received_by_server = dt;
  }

  void setTimeRecievedByUser(DateTime dt) {
    this._time_received_by_user = dt;
  }

  void setTimeSent(DateTime dt) {
    this._time_sent = dt;
  }

  void setTimeSeenByUser(DateTime dt) {
    this._time_seen_by_user = dt;
  }

  void setForwordedTrue(int originId) {
    this._forworded = true;
    this._origin_id = originId;
  }

  void setMessageContentType(MessageContentType messageContentType) {
    this._messageContentType = messageContentType;
  }

  void setText(String text) {
    this._text = text;
  }

//getters

  String getText() {
    return this._text;
  }

  int getId() {
    return _id;
  }

  int getOriginId() {
    return this._origin_id;
  }

  UserData? getSender() {
    return this._sender;
  }

  UserData? getReciever() {
    return this._receiver;
  }
}

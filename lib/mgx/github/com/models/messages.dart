import 'dart:io';

class Message {
  String senderName;
  int senderId;
  String messageBody;
  File file;
  Message({this.messageBody, this.senderName, this.file, this.senderId});
}

final myMessages = <Message>[
  Message(messageBody: "Hello! How are you doing?", senderId: 9),
  Message(messageBody: "Let me check that I have this right…", senderId: 1),
  Message(messageBody: "If I understand you correctly…", senderId: 1),
  Message(
      messageBody:
          "Perfect, I am really glad to hear that! How may I help you today?",
      senderId: 1),
  Message(messageBody: "That is a good question.", senderId: 9),
  Message(
      messageBody: "I’m not sure, but let me find out for you.", senderId: 1),
  Message(
      messageBody:
          "May I put your call on hold while I am checking your order?",
      senderId: 1),
  Message(messageBody: "Yeah, Sure..", senderId: 9),
  Message(messageBody: "Thank you for holding. ", senderId: 1),
  Message(
      messageBody:
          "I have the details of your latest payment, let me send it over to you.",
      senderId: 1),
  Message(messageBody: "Yeah. You may send to my account.", senderId: 9),
  Message(
      messageBody:
          "I’m sorry, It is not available right now. May I help you with something else?",
      senderId: 1),
];

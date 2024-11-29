import 'package:flutter/cupertino.dart';

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello, sir", messageType: "sender"),
  ChatMessage(messageContent: "hello sir", messageType: "receiver"),
  ChatMessage(messageContent: "I want to make a order", messageType: "sender"),
  ChatMessage(
      messageContent: "OK. What kind of vegetables. Do you need sir?",
      messageType: "receiver"),
  ChatMessage(
      messageContent: "i need 1kg of tomato, 1kg of cabbage",
      messageType: "sender"),
];

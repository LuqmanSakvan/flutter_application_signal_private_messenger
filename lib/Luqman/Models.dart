class User {
  final int index;
  final String name;
  User(this.index, this.name);
}

class ChatUsers {
  String name, messageText, time;
  ChatUsers(
      {required this.name, required this.messageText, required this.time});
}

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

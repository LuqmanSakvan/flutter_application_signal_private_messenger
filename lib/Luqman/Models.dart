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

//class User
class UserData {
  String name;
  String email;
  String? phone;

//constractor for inti my var
  UserData({
    required this.name,
    required this.email,
    this.phone,
  });
}

//create fake data
List<UserData> userlist = [
  UserData(
    name: "LuqmanSakvan",
    email: "Luqman@example.com",
    phone: '0750555555',
  ),
];

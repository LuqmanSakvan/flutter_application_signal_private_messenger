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
  UserData(
    name: "Haya Amedi",
    email: "Haya@example.com",
    phone: '0750555555',
  ),
  UserData(
    name: "Araz Mziri",
    email: "Araz@example.com",
    phone: '0750555555',
  ),
  UserData(
    name: "Rondk Rekani",
    email: "Rondk@example.com",
    phone: '0750555555',
  ),
  UserData(
    name: "Lana Rekani",
    email: "Rondk@example.com",
    phone: '0750555555',
  ),
  UserData(
    name: "Banaz Rekani",
    email: "Rondk@example.com",
    phone: '0750555555',
  ),
  UserData(
    name: "Lole Brifkani",
    email: "Rondk@example.com",
    phone: '0750555555',
  ),
  UserData(
    name: "Nazdar Bamarni",
    email: "Rondk@example.com",
    phone: '0750555555',
  ),
  UserData(
    name: "Dldar Duhoki",
    email: "Rondk@example.com",
    phone: '0750555555',
  ),
  UserData(
    name: "Louzia Akri",
    email: "Rondk@example.com",
    phone: '0750555555',
  ),
  UserData(
    name: "Lozan Zaxoy",
    email: "Rondk@example.com",
    phone: '0750555555',
  ),
];

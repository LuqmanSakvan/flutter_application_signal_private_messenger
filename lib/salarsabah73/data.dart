class user{
  String name;
  String? phone;

  user({
    required this.name,
    this.phone
  });
}

List<user> userlist = [
  user(
  name: "salar sabah",
  phone: "+964 750 555 2244"),
  user(
  name: "ahmed salah",
  phone: "+964 750 152 3222"),

];
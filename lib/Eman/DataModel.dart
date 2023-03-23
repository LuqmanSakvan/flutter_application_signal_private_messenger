class User_D_M{
String name;
String name2;
String? sub_name2;
String? sub_name;
String del;

User_D_M({
  required this.name,
    required this.sub_name,
    required this.name2,
    required this.sub_name2,
    required this.del

});
}

List<User_D_M>myuserlist=[
  User_D_M(name:"Theme" , sub_name:"System defult",
  name2: "Signal PIN",sub_name2: "",del: ""),

  User_D_M(name:"Chat color & wallpaper",sub_name: "",
  name2: "Change your PIN",sub_name2: "",del: ""),

  User_D_M(name:"Message font size" , sub_name:"Normal",
  name2: "PIN reminders",sub_name2: "You'll be asked less frequently over time",del: ""),

  User_D_M(name:"Language" , sub_name:"System defult",
  name2: "Registration",
  sub_name2: "Require your Signal PIN to register your phone number with Signal again",del: ""),
  
  User_D_M(name:"" , sub_name:"",
  name2: "Advanced PIN setting",sub_name2: "",del: ""),

  User_D_M(name:"" , sub_name:"",
  name2: "Account",sub_name2: "",del: ""),

  User_D_M(name:"" , sub_name:"",
  name2: "Change phone number",sub_name2: "",del: ""),

  User_D_M(name:"" , sub_name:"",
  name2: "Transfer account",sub_name2: "Transfer account to a new Android device",del: ""),

  
  
];
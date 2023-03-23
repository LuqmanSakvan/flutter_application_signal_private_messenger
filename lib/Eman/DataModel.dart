class User_D_M{
String name;
String name2;
String? sub_name2;
String? sub_name;

User_D_M({
  required this.name,
    required this.sub_name,
    required this.name2,
    required this.sub_name2

});
}

List<User_D_M>myuserlist=[
  User_D_M(name:"Theme" , sub_name:"System defult",name2: "",sub_name2: ""),

  User_D_M(name:"Chat color & wallpaper",sub_name: "",name2: "",sub_name2: ""),

  User_D_M(name:"Message font size" , sub_name:"Normal",name2: "",sub_name2: ""),

  User_D_M(name:"Language" , sub_name:"System defult",name2: "",sub_name2: ""),
  
];
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile" , style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        leading: IconButton(
          onPressed: (() {}),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(
                      top: 100,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.blue,
                          offset: Offset(2, 2),
                          blurRadius: 10,
                        ),
                      ],
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/duhok.jpg")
                        ),
                    ),
                  ),
                  const Text(
                    "salar sabah",
                    style: TextStyle(
                      fontFamily: "arial",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    "+964 750 555 2244",
                    style: TextStyle(
                      fontFamily: "arial",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    ),
                    ElevatedButton(
                      onPressed: () {}, 
                      child: Text("edit photo"),
                      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                      ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 24,
                  right: 24,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "PROFILE",
                      style: TextStyle(
                        fontFamily: "montserrat",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 18),
                    listProfile(Icons.person, "unknown", "Your Name"),
                    listProfile(Icons.border_color_outlined,"About", "Write a few words about yourself"),
                    listProfile(Icons.badge_rounded, "Badges", "Badges site"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
Widget listProfile(IconData icon , String text1 , String text2){
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(top: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 20,
        ),
        const SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "montserrat",
                fontSize: 14,
              ),
            ),
            Text(
              text2,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )
          ],
        )
      ],
    ),
  );
}
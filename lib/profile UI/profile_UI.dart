import 'package:flutter/material.dart';
import 'package:newassignments/profile%20UI/appBarPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileUI(),
  ));
}

class ProfileUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfileUIState();
}

class ProfileUIState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          AppBarPage(),
          SliverList(
              delegate: SliverChildBuilderDelegate(childCount: 1,
                  (BuildContext context, int index) {
            return Column(
              children:  [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: const Size(370, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  child: Row(
                    children: const [
                      Image(
                        image: AssetImage("assets/icons/user.png"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Privacy",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(
                        width: 185,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: const Size(370, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.history,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Purchase History",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: const Size(370, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.help_outline,
                        size: 30,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Help and Support",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: const Size(370, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  child: Row(
                    children:  const [
                      Icon(
                        Icons.settings,
                        size: 30,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(
                        width: 175,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: const Size(370, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.person_add_alt_1,
                        size: 30,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Invite a Friend",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: const Size(370, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.logout,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Logout",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(
                        width: 195,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            );
          })),
        ],
      ),
    );
  }
}

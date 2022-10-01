import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 400,
      pinned: true,
      backgroundColor: Colors.white,
      leading: const Padding(
        padding: EdgeInsets.only(top: 25),
        child: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
      ),
      leadingWidth: 100,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 30, top: 25),
          child: Icon(
            Icons.short_text,
            color: Colors.grey,
          ),
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profileImage.jpg"),
                  radius: 65,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 150,
                  ),
                  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 40,
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/google.png"),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/twitter.png"),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/linkedin.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "chromicle",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Center(
                child: Text(" @amFOSS"),
              ),
              const SizedBox(
                height: 8,
              ),
              const Center(
                child: Text(
                  "Mobile App Developer and Open ",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Center(
                child: Text(
                  " source enthusiastic",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
        //centerTitle: true,
        //  title: CircleAvatar(backgroundImage: AssetImage("assets/images/profileImage.jpg"), ),
      ),
      collapsedHeight: 400,
    );
  }
}

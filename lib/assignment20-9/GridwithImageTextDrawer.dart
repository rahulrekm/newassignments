import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const GridWithImageTextDemo(),
    theme: ThemeData(
        primaryColor: Colors.lightBlue,
        brightness: Brightness.light,
        fontFamily: "times new roman"),
  ));
}

class GridWithImageTextDemo extends StatefulWidget {
  const GridWithImageTextDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GridWithImageTextState();
}

class _GridWithImageTextState extends State {
  List<String> veg_images = [
    "assets/images/ashgourd.jpg",
    "assets/images/beet.jpg",
    "assets/images/bittergourd.jpg",
    "assets/images/carrot.jpg",
    "assets/images/onion.jpg",
    "assets/images/potato.jpg",
    "assets/images/pumpkin.jpg",
    "assets/images/smallonion.jpg",
    "assets/images/snakegourd.jpg",
    "assets/images/tomato.jpg",
  ];

  List<String> veggies = [
    "Ash Gourd",
    "Beet Root",
    "Bitter Gourd",
    "Carrot",
    "Onion",
    "Potato",
    "Pumpkin",
    "Small onion",
    "Snake Gourd",
    "tomato",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Grid Image Text",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Rahul R",
                  style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                ),
                accountEmail: Text(
                  "rahulrekm@gmail.com",
                  style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/useraccount.jpg"),
                ),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/background1.jpg"),
                  fit: BoxFit.cover,
                )),
              ),
              const ListTile(
                title: Text(
                  "About Page",
                  style: TextStyle(color: Colors.cyanAccent),
                ),
                trailing: Icon(
                  Icons.info,
                  color: Colors.cyanAccent,
                ),
              ),
              const ListTile(
                title: Text(
                  "Home Page",
                  style: TextStyle(color: Colors.cyanAccent),
                ),
                trailing: Icon(
                  Icons.home,
                  color: Colors.cyanAccent,
                ),
              ),
              const ListTile(
                title: Text(
                  "Orders",
                  style: TextStyle(color: Colors.cyanAccent),
                ),
                trailing: Icon(
                  Icons.shopping_basket,
                  color: Colors.cyanAccent,
                ),
              ),
            ],
          ),
        ),
      ),
      body: GridView.builder(
          itemCount: veg_images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return GridTile(
              footer: Center(
                child: Text(
                  veggies[index],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.cyan,
                  ),
                ),
              ),
              child: Image.asset(
                veg_images[index],
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';

import 'AppBarSection.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelPageDemo(),
  ));
}

class HotelPageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HotelPageDemoState();
}

class _HotelPageDemoState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarSection(),
          SliverGrid.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, top: 20, right: 5, bottom: 20),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(bottom: 30),
                      decoration: const BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 200,
                      width: 200,
                      child: const Icon(
                        Icons.hotel,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 40),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        "Hotel",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 10, right: 10),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(bottom: 30),
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 200,
                      width: 200,
                      child: const Icon(
                        Icons.restaurant,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 40),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        "Restaurant",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 30, left: 5),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(bottom: 30),
                      decoration: const BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 200,
                      width: 200,
                      child: const Icon(
                        Icons.local_cafe,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 40),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        "Cafe",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Stack(
                        fit: StackFit.passthrough,
                        children: [
                          const Positioned(
                            child: Image(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrGwVO-nZJfFhKCpEGJcH1gwSJfin6CE6kYw&usqp=CAU"),
                              fit: BoxFit.fill,
                              height: 250,
                              width: 460,
                            ),
                          ),
                          Positioned(
                            bottom: 25,
                            right: 15,
                            child: Container(
                              height: 40,
                              width: 50,
                              color: Colors.white,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "\$40",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            right: 15,
                            child: Container(
                              child: const Icon(
                                Icons.star_border,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 20, right: 145, top: 15, bottom: 2),
                          child: Text(
                            "Awesome Room Near  Bouddha",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 20),
                          child: Text(
                            "Bouddha, Kathmandu",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 30,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 30,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 30,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 30,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.green,
                                size: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "(220 reviews)",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: const Drawer(),
      ),
    );
  }
}

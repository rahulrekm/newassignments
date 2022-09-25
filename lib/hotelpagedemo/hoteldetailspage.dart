import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelDetailsPage(),
  ));
}

class HotelDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HotelDetailsPageState();
}

class HotelDetailsPageState extends State with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    height: 300,
                    width: 500,
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        const Positioned(
                          child: Image(
                            image: AssetImage("assets/images/hotel2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          top: 20,
                          left: 220,
                          child: Text(
                            "Detail",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        const Positioned(
                          bottom: 70,
                          left: 20,
                          child: Text(
                            "Crowne Plaza",
                            style: TextStyle(fontSize: 27, color: Colors.white),
                          ),
                        ),
                        const Positioned(
                          bottom: 40,
                          left: 20,
                          child: Text(
                            "Kochi, Kerala",
                            style: TextStyle(fontSize: 27, color: Colors.white),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 20,
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                color: Colors.grey),
                            height: 25,
                            width: 120,
                            alignment: Alignment.center,
                            child: const Text(
                              "  8.4/85 reviews  ",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.white70),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.purple,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.purple,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.purple,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.purple,
                                      size: 30,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.purple,
                                      size: 30,
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                      "8km from LuluMall",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 220),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text(
                                  "\$ 200",
                                  style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "/per night",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 30, right: 35),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.purple,
                      ),
                      padding: EdgeInsets.only(top: 20),
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Text(
                              "Book Now",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, right: 340),
                    child: Text(
                      "DESCRIPTION",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      child: const Text(
                        "Crowne Plaza Kochi,Kerala is an ideal staying place for both the professional and"
                        " leisure travellers from across the world. The hotel is blessed with excellent accomation arrangements "
                        "in the presence of fully furnished rooms and suites. The staying facilities are majestically"
                        "complemented by the traditional Indian hospitality at this five star property. Moreover the extensive"
                        "premises of hotel consists of excellent arrangements for business and personal events",
                        style: TextStyle(
                          leadingDistribution:
                              TextLeadingDistribution.proportional,
                          fontStyle: FontStyle.normal,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, right: 290),
                    child: Text("Crowne Plaza Kochi, Kerala"),
                  ),
                ],
              );
            }, childCount: 1),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 45,
        color: Colors.transparent,
        child: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          tabs: const <Widget>[
            Tab(
              iconMargin: EdgeInsets.only(bottom: 1),
              icon: Icon(Icons.search),
              text: "Search",
            ),
            Tab(
              iconMargin: EdgeInsets.only(bottom: 1),
              icon: Icon(Icons.favorite_border_outlined),
              text: "Favorites",
            ),
            Tab(
              iconMargin: EdgeInsets.only(bottom: 1),
              icon: Icon(Icons.settings),
              text: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}

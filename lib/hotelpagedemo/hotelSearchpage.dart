import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelSearchPage(),
  ));
}

class HotelSearchPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HotelSearchPageState();
}

class HotelSearchPageState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Hello @rjun",style: TextStyle(color: Colors.grey,fontSize: 20),textAlign: TextAlign.start,),
                      Text("Find Your Favorite Hotel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Container(
                      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/trekking.jpg"),fit: BoxFit.fill,) ,
                        borderRadius: BorderRadius.all(Radius.circular(15)),),
                      height: 70,width: 70,),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: TextField(

                decoration: InputDecoration(
                  hintText: "Search For Hotel",
                  prefixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(fontSize: 16,color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  )
                ),

              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("Popular Hotel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
            ),
            SizedBox(height: 220,width: double.infinity,
              child: ListView(scrollDirection: Axis.horizontal,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 0.2,
                        ),
                      ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                              color: Colors.white70,
                        ),
                      ),
                      height: 220,
                      width: 170,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,width: 170,
                          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/hotel1.jpg"),fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              )),
                          ),
                          const SizedBox(height: 10,),
                          const Text("HolyDayln"),
                          const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 10,),
                          Row(
                            children: const [
                              Text("\$180 / night",style: TextStyle(color: Colors.blue),),
                              SizedBox(width: 35,),
                              Text("4.5",style: TextStyle(color: Colors.blue),),
                              Icon(Icons.star,color: Colors.blue,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 0.2,
                        ),
                      ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white70,
                        ),
                      ),
                      height: 220,
                      width: 170,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,width: 170,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/hotel2.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Crowne Plaza"),
                          const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 10,),
                          Row(
                            children: const [
                              Text("\$230 / night",style: TextStyle(color: Colors.blue),),
                              SizedBox(width: 35,),
                              Text("4.5",style: TextStyle(color: Colors.blue),),
                              Icon(Icons.star,color: Colors.blue,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 0.2,
                        ),
                      ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white70,
                        ),
                      ),
                      height: 220,
                      width: 170,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,width: 170,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/hotel3.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Le Meridian"),
                          const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 10,),
                          Row(
                            children: const [
                              Text("\$190 / night",style: TextStyle(color: Colors.blue),),
                              SizedBox(width: 35,),
                              Text("4.5",style: TextStyle(color: Colors.blue),),
                              Icon(Icons.star,color: Colors.blue,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 0.2,
                        ),
                      ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white70,
                        ),
                      ),
                      height: 220,
                      width: 170,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,width: 170,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/hotel4.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Hotel Merriot"),
                          const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 10,),
                          Row(
                            children: const [
                              Text("\$200 / night",style: TextStyle(color: Colors.blue),),
                              SizedBox(width: 35,),
                              Text("4.5",style: TextStyle(color: Colors.blue),),
                              Icon(Icons.star,color: Colors.blue,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Colors.white70,
                          blurRadius: 0.2,
                        ),
                      ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white70,
                        ),
                      ),
                      height: 220,
                      width: 170,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,width: 170,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/hotel5.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                )),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Grand Hyatt"),
                          const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 10,),
                          Row(
                            children: const [
                              Text("\$250 / night",style: TextStyle(color: Colors.blue),),
                              SizedBox(width: 35,),
                              Text("4.5",style: TextStyle(color: Colors.blue),),
                              Icon(Icons.star,color: Colors.blue,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Hotel Packages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                  Padding(
                    padding: EdgeInsets.only(left: 160),
                    child: Text("view all",style: TextStyle(color: Colors.blue,fontSize: 20),),
                  ),
                ],
              ),
            ),


            ListView(shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    height: 100,width: 480,
                    decoration: const BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 130,width: 100,decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/hotel1.jpg"),fit: BoxFit.cover, ),
                        ),
                        ),
                        const SizedBox(width: 130,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                             const Text("CROWN PLAZA",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                            const Text("\$180 / night",style: TextStyle(color: Colors.blue),),
                            const SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(Icons.car_rental,color: Colors.blue,),
                                Icon(Icons.wine_bar,color: Colors.blue,),
                                Icon(Icons.wifi,color: Colors.blue,),
                                Icon(Icons.hot_tub,color: Colors.blue,),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 30,),
                        Column(
                          children: [
                            const SizedBox(height: 30,),
                            TextButton(onPressed: () {  },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                            child: const Text("Book",style: TextStyle(color: Colors.white,fontSize: 18),),),
                          ],
                        )
                      ],
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,width: 480,
                    decoration: const BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 130,width: 100,decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/hotel2.jpg"),fit: BoxFit.cover, ),
                        ),
                        ),
                        const SizedBox(width: 130,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Hotel Merriot ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                            const Text("\$200 / night",style: TextStyle(color: Colors.blue),),
                            const SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(Icons.car_rental,color: Colors.blue,),
                                Icon(Icons.wine_bar,color: Colors.blue,),
                                Icon(Icons.wifi,color: Colors.blue,),
                                Icon(Icons.hot_tub,color: Colors.blue,),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 30,),
                        Column(
                          children: [
                            const SizedBox(height: 30,),
                            TextButton(onPressed: () {  },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                              child: const Text("Book",style: TextStyle(color: Colors.white,fontSize: 18),),),
                          ],
                        )
                      ],
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,width: 480,
                    decoration: const BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 130,width: 100,decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/hotel3.jpg"),fit: BoxFit.cover, ),
                        ),
                        ),
                        const SizedBox(width: 130,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("le Meridian",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                            const Text("\$180 / night",style: TextStyle(color: Colors.blue),),
                            const SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(Icons.car_rental,color: Colors.blue,),
                                Icon(Icons.wine_bar,color: Colors.blue,),
                                Icon(Icons.wifi,color: Colors.blue,),
                                Icon(Icons.hot_tub,color: Colors.blue,),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 30,),
                        Column(
                          children: [
                            const SizedBox(height: 30,),
                            TextButton(onPressed: () {  },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                              child: const Text("Book",style: TextStyle(color: Colors.white,fontSize: 18),),),
                          ],
                        )
                      ],
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,width: 480,
                    decoration: const BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 130,width: 100,decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/hotel4.jpg"),fit: BoxFit.cover, ),
                        ),
                        ),
                        const SizedBox(width: 130,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Holy Day Inn",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                            const Text("\$180 / night",style: TextStyle(color: Colors.blue),),
                            const SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(Icons.car_rental,color: Colors.blue,),
                                Icon(Icons.wine_bar,color: Colors.blue,),
                                Icon(Icons.wifi,color: Colors.blue,),
                                Icon(Icons.hot_tub,color: Colors.blue,),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 30,),
                        Column(
                          children: [
                            const SizedBox(height: 30,),
                            TextButton(onPressed: () {  },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                              child: const Text("Book",style: TextStyle(color: Colors.white,fontSize: 18),),),
                          ],
                        )
                      ],
                    ),

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,width: 480,
                    decoration: const BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 130,width: 100,decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/hotel5.jpg"),fit: BoxFit.cover, ),
                        ),
                        ),
                        const SizedBox(width: 130,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Grand Hyatt",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            const Text("A five star hotel in kochi",style: TextStyle(color: Colors.grey),),
                            const Text("\$230 / night",style: TextStyle(color: Colors.blue),),
                            const SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(Icons.car_rental,color: Colors.blue,),
                                Icon(Icons.wine_bar,color: Colors.blue,),
                                Icon(Icons.wifi,color: Colors.blue,),
                                Icon(Icons.hot_tub,color: Colors.blue,),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 30,),
                        Column(
                          children: [
                            const SizedBox(height: 30,),
                            TextButton(onPressed: () {  },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                              child: const Text("Book",style: TextStyle(color: Colors.white,fontSize: 18),),),
                          ],
                        )
                      ],
                    ),

                  ),
                ),
                ],
            ),
          ],
        ),
      ),
    );
  }
}
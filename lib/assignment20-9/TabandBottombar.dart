import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:newassignments/assignment20-9/GridwithImageTextDrawer.dart';
import 'package:newassignments/assignment20-9/callbottombar.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TabAndBottomBar(),
  ));
}

class TabAndBottomBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _TabAndBottomBarState();
}

class _TabAndBottomBarState extends State{

  List<Tab> _tabs = <Tab>[
    Tab(icon: Image.asset("assets/icons/icons8-sunday-64.png",width: 36,height: 36,),child: Text("Sunday"),),
    Tab(icon: Image.asset("assets/icons/icons8-monday-64.png",width: 36,height: 36,),child: Text("Monday"),),
    Tab(icon: Image.asset("assets/icons/icons8-tuesday-64.png",width: 36,height: 36,),child: Text("Tuesday"),),
    Tab(icon: Image.asset("assets/icons/icons8-wednesday-64.png",width: 36,height: 36,),child: Text("Wednesday"),),
    Tab(icon: Image.asset("assets/icons/icons8-thursday-64.png",width: 36,height: 36,),child: Text("Thursday"),),
    Tab(icon: Image.asset("assets/icons/icons8-friday-64.png",width: 36,height: 36,),child: Text("Friday"),),
    Tab(icon: Image.asset("assets/icons/icons8-saturday-64.png",width: 36,height: 36,),child: Text("Saturday"),),
  ];

  List<Widget> _views = <Widget>[
    SingleChildScrollView(child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqNuaL4486iNB7u2uSqvRv1kCaqfAONNfXLQ&usqp=CAU"),fit: BoxFit.cover
      ,)),
    Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR324ZV6DhvMaOeNXti2CyvGb-Z9BOgNM_NQ&usqp=CAU"),fit: BoxFit.cover,),
    Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCpKgInE0Sg7-lSxZzGMf1cVATLGv5VpL8iw&usqp=CAU"),fit: BoxFit.cover,),
    Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEp0RPEtGFVWbUDEIdB4O8ONa0FkqreHmvnQ&usqp=CAU"),fit: BoxFit.cover,),
    Image(image: NetworkImage("https://pbs.twimg.com/profile_images/1543547831079804928/jmURZ8fH_400x400.jpg"),fit: BoxFit.cover,),
    Image(image: NetworkImage("https://www.desicomments.com/wp-content/uploads/2022/03/happy-friday-pictures.jpg"),fit: BoxFit.cover,),
    Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBToHHflS3pWf2V1kDm3ECAb7bfQYgYYvXdQ&usqp=CAU"),fit: BoxFit.cover,),
  ];

  int selected =0;
  void onItemTapped(int index){
    setState(() {
      selected = index;
      _bottomview[selected];

    });
  }

  List<Widget> _bottomview = <Widget>[
  Container(
  child: Text("call"),),
    Container(width: 400,height: 600,
      child: Text("camera"),),
    Container(width: 400,height: 600,
      child: Text("message"),),
    Container(width: 400,height: 600,
      child: Text("add"),),
    Container(width: 400,height: 600,
      child: Text("call"),),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab and BottomBar"),
          bottom: TabBar(
            labelColor: Colors.lightBlue,
            unselectedLabelColor: Colors.red,
            tabs: _tabs,
            isScrollable: true,

            indicator: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellowAccent,
            ),
            physics: BouncingScrollPhysics(),
            onTap: (int index){
                  Fluttertoast.showToast(msg: "This is $index day",toastLength: Toast.LENGTH_LONG,backgroundColor: Colors.amberAccent);
            },
          ),
        ),

        body: IndexedStack(
          children: [
            TabBarView(
                children: _views
            ),
            _bottomview[selected],
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
    items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.call), onPressed: () { setState(() {
      Container(child: Text("call"),);Fluttertoast.showToast(msg: "call");
    });  },),backgroundColor: Colors.red,label: "Call"),
    BottomNavigationBarItem(icon: Icon(Icons.camera),label: "camera"),
    BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
    BottomNavigationBarItem(icon: Icon(Icons.add),label: "add"),
    BottomNavigationBarItem(icon: Icon(Icons.whatsapp),label: "whatsapp"),
    ],
    currentIndex: selected,
      onTap: onItemTapped,
    backgroundColor: Colors.tealAccent,
      ),),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TabwithBottom(),
  ));
}

class TabwithBottom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabwithBottomState();
}

class _TabwithBottomState extends State with SingleTickerProviderStateMixin {
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
        appBar: AppBar(
          title: const Center(
            child: Text("Week Days"),
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              TopTabView(),
              const Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-63WX3JbD8ZTaUoPO1YSP8wlo6o6EAxee4g&usqp=CAU")),
              const Image(
                  image: NetworkImage(
                      "https://webscom.zendesk.com/hc/article_attachments/209054487/member_tabs.jpg")),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.blue,
          child: TabBar(
            controller: _tabController,
            unselectedLabelColor: Colors.greenAccent,
            labelColor: Colors.yellowAccent,
            tabs: const <Widget>[
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.calendar_month),
                text: "Month",
              ),
              Tab(
                icon: Icon(Icons.person_outline),
                text: "Profile",
              ),
            ],
          ),
        ));
  }
}

class TopTabView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ToptabViewState();
}

class _ToptabViewState extends State with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.cyanAccent,
          labelColor: Colors.green,
          tabs: <Widget>[
            Tab(
              iconMargin: const EdgeInsets.only(bottom: 1),
              icon: Image.asset(
                "assets/icons/icons8-sunday-64.png",
                width: 36,
                height: 36,
              ),
              child: const Text("Sunday"),
            ),
            Tab(
              iconMargin: const EdgeInsets.only(bottom: 1),
              icon: Image.asset(
                "assets/icons/icons8-monday-64.png",
                width: 36,
                height: 36,
              ),
              child: const Text("Monday"),
            ),
            Tab(
              iconMargin: const EdgeInsets.only(bottom: 1),
              icon: Image.asset(
                "assets/icons/icons8-tuesday-64.png",
                width: 36,
                height: 36,
              ),
              child: const Text("Tuesday"),
            ),
            Tab(
              iconMargin: const EdgeInsets.only(bottom: 1),
              icon: Image.asset(
                "assets/icons/icons8-wednesday-64.png",
                width: 36,
                height: 36,
              ),
              child: const Text("Wednesday"),
            ),
            Tab(
              iconMargin: const EdgeInsets.only(bottom: 1),
              icon: Image.asset(
                "assets/icons/icons8-thursday-64.png",
                width: 36,
                height: 36,
              ),
              child: const Text("Thursday"),
            ),
            Tab(
              iconMargin: const EdgeInsets.only(bottom: 1),
              icon: Image.asset(
                "assets/icons/icons8-friday-64.png",
                width: 36,
                height: 36,
              ),
              child: const Text("Friday"),
            ),
            Tab(
              iconMargin: const EdgeInsets.only(bottom: 1),
              icon: Image.asset(
                "assets/icons/icons8-saturday-64.png",
                width: 36,
                height: 36,
              ),
              child: const Text("Saturday"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Image(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqNuaL4486iNB7u2uSqvRv1kCaqfAONNfXLQ&usqp=CAU"),
            fit: BoxFit.cover,
          ),
          Image(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR324ZV6DhvMaOeNXti2CyvGb-Z9BOgNM_NQ&usqp=CAU"),
            fit: BoxFit.cover,
          ),
          Image(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCpKgInE0Sg7-lSxZzGMf1cVATLGv5VpL8iw&usqp=CAU"),
            fit: BoxFit.cover,
          ),
          Image(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEp0RPEtGFVWbUDEIdB4O8ONa0FkqreHmvnQ&usqp=CAU"),
            fit: BoxFit.cover,
          ),
          Image(
            image: NetworkImage(
                "https://pbs.twimg.com/profile_images/1543547831079804928/jmURZ8fH_400x400.jpg"),
            fit: BoxFit.cover,
          ),
          Image(
            image: NetworkImage(
                "https://thumbs.dreamstime.com/b/happy-friday-everyone-friendly-message-204057812.jpg"),
            fit: BoxFit.cover,
          ),
          Image(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBToHHflS3pWf2V1kDm3ECAb7bfQYgYYvXdQ&usqp=CAU"),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

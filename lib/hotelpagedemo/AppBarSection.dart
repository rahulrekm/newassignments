import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';
//
// class AppBarSection extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() => _AppBarState();
//
// }

class AppBarSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      actions: <Widget>[
        Icon(Icons.favorite_border)
      ],
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        centerTitle: true,
        title: SizedBox(height: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Type your location",textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
              OutlineSearchBar(
                  borderRadius: BorderRadius.circular(25),
                  margin: EdgeInsets.only(left: 20,right: 20),
                  searchButtonPosition: SearchButtonPosition.leading,searchButtonIconColor: Colors.grey[400],
                  hintText: "Bouddha, Kathmandu",textPadding: EdgeInsets.only(left: 26,),
                  hintStyle: TextStyle(fontSize: 15,color: Colors.black45)
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.cyan,
      expandedHeight: 200,

    );
  }
}
import 'package:flutter/material.dart';

class CallBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     alignment: Alignment.center,
     child: Card(elevation:  5,color: Colors.cyanAccent,
       child: Icon(Icons.call,color: Colors.pink,),
     ),
   );
  }

}

class CameraBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Card(elevation:  5,color: Colors.cyanAccent,
        child: Icon(Icons.camera,color: Colors.pink,),
      ),
    );
  }
}

class MessageBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Card(elevation:  5,color: Colors.cyanAccent,
        child: Icon(Icons.message,color: Colors.pink,),
      ),
    );
  }
}

class AddBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Card(elevation:  5,color: Colors.cyanAccent,
        child: Icon(Icons.add,color: Colors.pink,),
      ),
    );
  }
}
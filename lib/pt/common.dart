import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class mostt extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Most common problems'),),
      body: Container(
        padding: EdgeInsets.all(22),
        child: SingleChildScrollView(
          child: Column(children: [
            Card(
              color: Colors.teal,
              child: ListTile(title: Text(
                  "1- pain all over the body due to physical exertion ",
                  style: TextStyle(color: Colors.white, fontSize: 17,)
              ),),
            ),

            SizedBox(height: 15,),
            Divider(height: 10, color: Colors.black,),
            SizedBox(height: 15,),
            Card(
              color: Colors.teal,
              child: ListTile(title: Text(
                  "2- fatigue and deformities such as kyphosis due to repeating the same uncomfortable positions for long periods.",
                  style: TextStyle(color: Colors.white, fontSize: 17,)
              ),),
            ),
            SizedBox(height: 15,),
            Divider(height: 10, color: Colors.black,),
            SizedBox(height: 15,),
            Card(
              color: Colors.teal,
              child: ListTile(title: Text(
                  "3-sprain and strain due to sudden forced movement during sessions.",
                  style: TextStyle(color: Colors.white, fontSize: 17,)
              ),),
            ),

            SizedBox(height: 20,),
          ],),
        ),
      ),
    );
  }


}

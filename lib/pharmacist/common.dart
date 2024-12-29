import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




class coommon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Most common problems'),),
      body: Container(
        padding: EdgeInsets.all(19),
        child: SingleChildScrollView(
          child: Column(children: [
            Card(
              color:Colors.teal ,
              child: ListTile(title:  Text(
                  "1- Chemical poison",
                  style: TextStyle(color: Colors.white, fontSize: 17,)
              ),),
            ),

            SizedBox(height: 15,),
            Divider(height: 10,color: Colors.black,),
            SizedBox(height: 15,),
            Card(
              color:Colors.teal ,
              child: ListTile(title:  Text(
                  "2- Possible sliping and falling due to slippery materials on the floor or high slelves",
                  style: TextStyle(color: Colors.white, fontSize: 17,)
              ),),
            ),

            SizedBox(height: 15,),
            Divider(height: 10,color: Colors.black,),
            SizedBox(height: 15,),
            Card(
              color:Colors.teal ,
              child: ListTile(title:  Text(
                  "3- Knee and back pain due to prolonged standing in the pharmacy",
                  style: TextStyle(color: Colors.white, fontSize: 17,)
              ),),
            ),

            SizedBox(height: 15,),
            Divider(height: 10,color: Colors.black,),
            SizedBox(height: 15,),
            Card(
              color:Colors.teal ,
              child: ListTile(title:  Text(
                  "4- Eye problems due to prolonged working on computer",
                  style: TextStyle(color: Colors.white, fontSize: 17,)
              ),),
            ),

            SizedBox(height: 15,),
            Divider(height: 10,color: Colors.black,),
            SizedBox(height: 15,),
            Card(
              color:Colors.teal ,
              child: ListTile(title:  Text(
                  "5- possible cuts and burns due to sharp equipment, tools and Electrical cords",
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

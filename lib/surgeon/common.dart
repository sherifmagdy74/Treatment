import 'package:flutter/material.dart';

class common extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Most common problems'),),
      body: Container(
        padding: EdgeInsets.only(left: 22,right: 22,top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.teal,
                child: ListTile(
                  title: Text(
                    "1- Back pain",
                    style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),
                  ),
                ),
              ),

            SizedBox(height: 30,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title:Text(
                    " 2-Neck pain",
                    style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),
                  ),
                ),
              ),

            SizedBox(height: 30,),
              Card(
                color: Colors.teal,
                child: ListTile(
                  title:Text(
                    "3-Leg pain",
                    style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),
                  ) ,
                ),
              )


          ],),
        ),
      ),
    );
  }
}

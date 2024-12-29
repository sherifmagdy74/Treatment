import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class most extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Most common problems'),),
      body: Container(
        padding: EdgeInsets.all(22),
        child: SingleChildScrollView(
          child: Column(children: [

               ListTile(title:  Text(
                "1-Back pain ",
                style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,
              )),
            SizedBox(height: 30,),
            ClipPath(
              clipper: TriangleClipper(),
              child: Container(
                height: 100,
                width: 140,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Due to",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center),

                    Text("",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                        textAlign: TextAlign.center),
                    Text("",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Card(
              color: Colors.teal,
              child: ListTile(title: Text(
                "*Loading patient into ambulance and vast physical exertion during a CRP procedure ",
                style: TextStyle(color: Colors.white, fontSize: 17,),
              ) ),
            ),
            SizedBox(height: 15,),
            Card(
              color: Colors.teal,
              child: ListTile(title: Text(
                "*Narrow passageways and stairs ",
                style: TextStyle(color: Colors.white, fontSize: 17,),
              ) ),
            ),
            SizedBox(height: 15,),
            Card(
              color: Colors.teal,
              child: ListTile(title: Text(
                "*Prolonged flexed and twesting posture when medical care ",
                style: TextStyle(color: Colors.white, fontSize: 17,),
              ) ),
            ),
            SizedBox(height: 15,),
            Card(
              color: Colors.teal,
              child: ListTile(title: Text(
                "*Delivered to the patient in ambulance and in urgent medical care ",
                style: TextStyle(color: Colors.white, fontSize: 17,),
              ) ),
            ),
            SizedBox(height: 15,),
            Card(
              color: Colors.teal,
              child: ListTile(title: Text(
                "*Repetitive movement with poor handling techniques ",
                style: TextStyle(color: Colors.white, fontSize: 17,),
              ) ),
            ),
            SizedBox(height: 15,),
            Divider(height: 10,color: Colors.black,),
            SizedBox(height: 15,),
            Text(
              "2-neck, shoulders, knees and thighs, arms and wrists pain also more common in female, and this lead to activity limitation",
              style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
            ),
            SizedBox(height: 15,),

          ],),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class common extends StatelessWidget {
  const common({Key? key}) : super(key: key);

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
              child: ListTile(title: Text(
                "1- low back pain : is the most common work-related musculoskeletal problem among healthcare workers including nurses. Awkward trunk postures have been recognized as one common problem in this group ",
                style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold,),
              ) ,),
            ),

            SizedBox(height: 15,),
            Divider(height: 10,color: Colors.black,),
            SizedBox(height: 15,),
            Card(
              color:Colors.teal ,
              child: ListTile(title: Text(
                "2- Neck pain and headaches : is commonly associated with repetitive strain and head and neck postural impairments. ",
                style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold,),
              ),),
            ),

            SizedBox(height: 15,),
            Divider(height: 10,color: Colors.black,),
            SizedBox(height: 15,),
            Card(
              color:Colors.teal ,
              child: ListTile(title: Text(
                "3- Shoulder pain : is commonly associated with Repetitive overhead movement,Compression to the shoulder with a fall or other trauma,Weakness and Poor posture ",
                style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold,),
              ),),
            ),

            SizedBox(height: 15,),
            Divider(height: 10,color: Colors.black,),
            SizedBox(height: 15,),
            Card(
              color:Colors.teal ,
              child: ListTile(title:Text(
                "4- Knee pain : Approximately 25-30% of nursing personnel experience knee pain",
                style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold,),
              ),),
            ),
            SizedBox(height: 20,),


          ],),
        ),
      ),
    );
  }

  }

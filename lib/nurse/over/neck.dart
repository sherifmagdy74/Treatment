import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class neck extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Neck and shoulder pain'),),
      body: Container(
        padding: EdgeInsets.all(24),
        child:
        SingleChildScrollView(
          child: Column(

            children: [
              Card(
                color:Colors.teal ,
                child: ListTile(title:  Text(
                    "* keep moving your neck as much as possible. ",
                    style: TextStyle(color: Colors.white, fontSize: 17,)
                ),),
              ),

              SizedBox(height: 15,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 15,),
              Card(
                color:Colors.teal ,
                child: ListTile(title:  Text(
                    "* Heat packs or ice packs may also be used to relieve neck stiffness and pain ",
                    style: TextStyle(color: Colors.white, fontSize: 17,)
                ),),
              ),

              SizedBox(height: 15,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 15,),
              Card(
                color:Colors.teal ,
                child: ListTile(title:  Text(
                    "* Make sure you have a comfortable, supportive pillow. Try sleeping with one firm support pillow rather than softer pillows to avoid stretching your neck muscles. ",
                    style: TextStyle(color: Colors.white, fontSize: 16,)
                ),),
              ),

              SizedBox(height: 15,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 15,),
              Card(
                color:Colors.teal ,
                child: ListTile(title:  Text(
                    "* Exercises such as : Aerobic exercise, Stretching exercises and Strengthening exercises ",
                    style: TextStyle(color: Colors.white, fontSize: 17,)
                ),),
              ),

              SizedBox(height: 15,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 15,),
              Card(
                color:Colors.teal ,
                child: ListTile(title:  Text(
                    "* Stretching techniques such as manual traction help take pressure off the nerves and allow them to work properly. ",
                    style: TextStyle(color: Colors.white, fontSize: 17,)
                ),),
              ),

              SizedBox(height: 15,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 15,),
              Card(
                color:Colors.teal ,
                child: ListTile(title:  Text(
                    "* Taping to reduce the tension and pressure on some muscles and nerves and encourage correcting ones to work better. ",
                    style: TextStyle(color: Colors.white, fontSize: 17,)
                ),),
              ),

              SizedBox(height: 50,),
              ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  height: 120,
                  width: 245,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Exercises for Neck",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center),

                      Text("and shoulder",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                          textAlign: TextAlign.center),
                      Text("pain",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                          textAlign: TextAlign.center),
                      Text("    ",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                          textAlign: TextAlign.center),
                      Text("    ",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              ListTile(
                title: Text('1- Rotation',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('From a neutral position, turn the head slowly to the left as if looking over the shoulder and repeat on the right side.',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('2- Forward bending',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('Lower the head forward toward the chest and hold for a moment',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('3- Shoulder rolls',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('Start with the head and neck in a neutral position.Lift both shoulders in a shrugging motion, without moving the head or neck.Move the shoulders in a circular motion, squeezing the shoulder blades together and then releasing them to push them forward.',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('4- Side bends',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('Extend both arms straight above the head and clasp the hands.Without bending the neck, lean slowly toward the left side.Return to the center, keeping the arms above the head.Repeat the movement on the right side.',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('5- Seated twist',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('Sit on a chair with a straight back.Put the left hand on the right knee and gently pull to rotate the shoulders to the right as if looking behind the chair.Slowly return to the center.Repeat the twist with the right hand on the left knee.',style: TextStyle(fontSize: 17)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

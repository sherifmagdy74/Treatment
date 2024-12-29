import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class low extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Low Back Pain'),),
      body: Container(
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color:Colors.teal ,
                child: ListTile(title: Text(
                  "*Stay active, and do as much of your normal routine as possible (bed rest for longer than a day can actually slow down your recovery.) ",
                  style: TextStyle(color: Colors.white, fontSize: 17.50,),
                ),),
              ),

              SizedBox(height: 15,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 15,),
              Card(
                color:Colors.teal ,
                child: ListTile(title: Text(
                  "* Manual therapy, including spinal manipulation, to improve the mobility of joints and soft tissues) ",
                  style: TextStyle(color: Colors.white, fontSize: 17.50,)
                ),),
              ),

              SizedBox(height: 15,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 15,),
              Card(
                color:Colors.teal ,
                child: ListTile(title:  Text(
                  "* Use of ice or heat treatments or electrical stimulation to help relieve pain.) ",
                  style: TextStyle(color: Colors.white, fontSize: 17.50),
                ),),
              ),

              SizedBox(height: 15,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 15,),
              Card(
                color:Colors.teal ,
                child: ListTile(title:  Text(
                  "* Exercises such as : Aerobic exercise, Stretching exercises and Strengthening exercises) ",
                  style: TextStyle(color: Colors.white, fontSize: 17.50,),
                ),),
              ),

              SizedBox(height: 50,),
              ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  height: 120,
                  width: 190,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Exercises for",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center),

                      Text("Low Back",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                          textAlign: TextAlign.center),
                      Text("Pain",
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
                title: Text('1- Knee to Chest',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('Laying on your back, gently pull your knees to your chest, holding for a second, then extending your arms back out straight. Hold for 20 seconds, repeat 5 repetitions, perform 3 times per day.',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/knee.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('2- Extensions',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('Laying on your stomach, gently press up and extend your lower back. Do not hold this, but repeat the movement 10 times, for 3 sets, three times per day. If this stretch feels too strong you can adjust it by resting on your forearms.',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/ex.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('3- Child’s Pose',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('Start with your knees apart and toes touching. Reach out in front of you and sit your bum back towards your heels. Hold this pose for 30 seconds, repeat 5 times.',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/ch.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('4- Hamstring stretches',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('Lay on your back, with one leg bent and one leg in the air with a stretch band around your foot. Hold for 30 seconds, repeat both legs 5 times.',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/ham.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}

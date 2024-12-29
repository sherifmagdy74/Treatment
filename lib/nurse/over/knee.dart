import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class knee extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Knee Pain'),),
      body: Container(
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color:Colors.teal ,
                child: ListTile(title:  Text(
                    "*Avoid standing for long times Take a break during work time ",
                    style: TextStyle(color: Colors.white, fontSize: 18,)
                ),),
              ),

              SizedBox(height: 15,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 15,),
              Card(
                color:Colors.teal ,
                child: ListTile(title:  Text(
                    "* Maintain the correct position of the body while standing ",
                    style: TextStyle(color: Colors.white, fontSize: 18,)
                ),),
              ),

              SizedBox(height: 15,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 15,),
              Card(
                color:Colors.teal ,
                child: ListTile(title:  Text(
                    "*Knee strengthening and stretching exercises such as ",
                    style: TextStyle(color: Colors.white, fontSize: 18,)
                ),),
              ),

              SizedBox(height: 50,),
              ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  height: 110,
                  width: 200,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Exercises for",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center),

                      Text("Knee pain",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                          textAlign: TextAlign.center),

                      Text("   ",
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
              ListTile(
                title: Text('1- Heel and Calf Stretches',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('Start by standing upright and facing a wall. Extend your arms and place them on the completely.Repeat this motion for 30 seconds and switch legs',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/heel.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('2- Leg Adduction',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('As shown, start with one foot above the chair, and one below resting on the ground. Raise the straightened leg upward against the bottom of the chair. Hold for ten seconds and then return the leg to the floor.',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/leg.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('3- straight leg ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('raises Lie down on the floor and bend one knee while ensuring your foot is firmly in contact with the ground. With one knee bent, raise the other leg. Make sure you don’t bend your knees when raising your leg.Repeat 10-15 times for each leg',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/st.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('4- Half Squats',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('relax your knees while strengthening your glutes, quadriceps, and hamstrings. Consistent half squats go a long way in relieving knee inflammation and soreness.Unlike regular squats, opt for “halfway” squats by lowering your upper body by approximately 10 inches. Feel free to experiment with different heights depending on what suits you best.',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/ha.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class claw extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(22),
        child:
        Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Claw Stretch',
                  style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                SizedBox(height: 25,),
                Image(image: AssetImage('assets/claw.jpg'),fit:BoxFit.cover,),
                SizedBox(height: 25,),
                Text('* Yet another hand exercise that helps improve your fingers’ range of motion, the claw stretch is named as such because it requires you to make your hand look like a claw.You can do that by bending your fingers inward, making sure their tips make contact with each finger joint’s base. Release after 30 to 60 seconds, and repeat the exercise on each hand at least four times.',
                  style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.justify,),
              ],
            ),
          ),
        )
        ,
      ),
    );
  }
}

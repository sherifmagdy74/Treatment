import 'package:flutter/material.dart';

class tumb extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20),
        child:
        Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Thumb Circles',
                  style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                SizedBox(height: 25,),
                Image(image: AssetImage('assets/hand.png'),fit:BoxFit.cover,),
                SizedBox(height: 25,),
                Text('* This exercise will get a thumbs up from you, literally.To perform this exercise that aims to keep the tendons in your thumbs loose and flexible, all you have to do is make a “thumbs up” sign, and rotate them gently clockwise first, then counterclockwise, for a few seconds.You can do this for as long as you’re comfortable, switching directions from time to time.',
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

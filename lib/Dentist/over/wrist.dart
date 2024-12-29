import 'package:flutter/material.dart';

class wrist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(25),
        child:
        Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Wrist Bend',
                  style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                SizedBox(height: 25,),
                Image(image: AssetImage('assets/wr.jpg'),fit:BoxFit.cover,),
                SizedBox(height: 25,),
                Text('* With your elbow resting on a table, extend your hand out and bend it at the wrist at a 90 degree angle for five seconds. Then, bend it backward as close to 90 degrees as possible. Hold for five seconds. Repeat this motion 10 times. Rest and repeat the entire set two more times with a rest in between each set.',
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

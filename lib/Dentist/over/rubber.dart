import 'package:flutter/material.dart';

class rubber extends StatelessWidget {

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
                Text('Rubber Ball Squeez',
                  style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                SizedBox(height: 25,),
                Image(image: AssetImage('assets/ru.jpg'),fit:BoxFit.cover,),
                SizedBox(height: 25,),
                Text('* Take a small rubber ball that fits in the palm of your hand and squeeze the ball with moderate pressure for five seconds. Release. Repeat 10 times. Repeat the entire set two more times with a brief rest in between each set.',
                  style: TextStyle(color: Colors.black,fontSize: 23),textAlign: TextAlign.justify,),
              ],
            ),
          ),
        )
        ,
      ),
    );
  }
}

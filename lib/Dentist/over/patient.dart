import 'package:flutter/material.dart';

class patient extends StatelessWidget {

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
                Text('Patient Positioning',
                  style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                SizedBox(height: 25,),
                Image(image: AssetImage('assets/Pat.png'),fit:BoxFit.cover,),
                SizedBox(height: 25,),
                Text('* Supine positioning of the patient in the chair is usually the most effective way to help to maintain neutral posture. The chair should be raised so the operators thighs can freely turn beneath the patients chair. Clearance around the patients head should at least allow unimpeded operator access from the 7 to 12:30 o’clock position, for right-handed operators',
                  style: TextStyle(color: Colors.black,fontSize: 19),textAlign: TextAlign.justify,),
              ],
            ),
          ),
        )
        ,
      ),
    );
  }
}

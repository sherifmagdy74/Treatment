import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri url = Uri.parse('https://youtu.be/bWiwL5fbiRg');
final Uri uurl = Uri.parse('https://youtu.be/5udJOvgNUOA');

class oveer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('How To Overcome'),),
      body: Container(
        padding: EdgeInsets.all(22),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text('1- Common error to shift your weight on one leg, pelvic asymmetry, leading to shear, load, and pain on lower leg.Solution: concentrate not to do and squatting or use footstool like photo',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/M.png'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('2- Microscope level should be parallel, or you do slight downward because if too low undue flexion or too high undue extension, it should be close to surgeon if not he will lean forward cause stress on back and cervical degeneration',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/q.png'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('3- Monitor level optimal range from 15_40 degrees below eye level, higher causing un desired extension',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/8.png'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('4- Table height if too high causes mechanical load on shoulder girdle Optimal height from 90:120 degrees from elbow flexion',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/5.png'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('5- Foot pedals should be beside surgeon feet, and should not need excess range of travel to protect muscles of ankle and foot from fatigue',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/fo.png'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('6- Surgeon chair height:foot must reach floor with back supported,if no elbow support leads to entire stress on shoulder and back leading to chronic fatigue and tightness on muscles like trapezius',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/hi.png'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('7- Ear, shoulder, pelvis should be in one line.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/ear.png'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('8- Arm rest : if too low lead to unsupported elbow , if too high limit range of motion',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/ar.png'),fit: BoxFit.fill,width: 270,),

              SizedBox(height: 15,),

              Center(
                child: GestureDetector(
                  onTap: () => lllaunchUrl(),
                  child: Container(
                    height: 60,
                    width: 400,
                    child: Center(
                      child: Text(
                        "Click here to Check Back Ergonomics",
                        style: (TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () => llaunchUrl(),
                  child: Container(
                    height: 60,
                    width: 400,
                    child: Center(
                      child: Text(
                        "Click here to Check another video",
                        style: (TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
  Future<void> llaunchUrl() async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
  Future<void> lllaunchUrl() async {
    if (!await launchUrl(uurl)) {
      throw 'Could not launch $uurl';
    }
  }
}

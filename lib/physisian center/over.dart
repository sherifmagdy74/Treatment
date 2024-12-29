import 'package:flutter/material.dart';

class how extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('How To Overcome'),),
      body: Container(
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text('1- The patient’s bed should be set at eye level; this way you do not have to consistently look up or down',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/c.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('2- Using a chair with a backrest that supports the curve of your lower (lumbar) back. Sit back in the chair and position your thighs horizontal to your knees at hip level. Rest your feet comfortably on the floor or on a footrest.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/g.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('3- Dont slump',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/Capture.PNG'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('4- Stretch at least once every hour',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/Cat.PNG'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('5- Stretch your left hand out in front of you, pointing fingers toward the floor, palm facing out.Use your right hand to increase the stretch, pulling your fingers down and toward the body.Repeat on the other side.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/TI.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('6- Adjust your chair, so you are not sitting in a low position most of the time.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('7- Be aware of how you sit all day. When you’re sitting or standing',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('8- Elbows should be supported and close to your body wrists and hands should be in line with your forearms shoulders should be relaxed',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('9- If you keeps sitting for long periods of time, make sure that you take some time after work to get some physical activity and keep your muscles, tendons and joints in good working order. Even a short walk every day can do a world of good.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

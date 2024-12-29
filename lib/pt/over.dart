import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


final Uri url = Uri.parse('https://youtu.be/XgZaDJxKUoI');
final Uri uurl = Uri.parse('https://youtu.be/5udJOvgNUOA');
class ovver extends StatelessWidget {

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
                title: Text('1- Having good posture is more than just looking good; it helps you to develop strength, flexibility, and balance in your body.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify ),),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('2- Get a posture corrector. Wearing a posture corrector can help remind you to maintain good posture throughout the day, and it can also help train your muscles to support good posture.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('3- It can also be improved by regularly performing simple stretching exercises in the comfort of your own home or office. So, let’s make it a part of our routine to carry ourselves properly because its benefits can be life-changing.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify,),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('4- Don’t slouch during sessions . Slouching puts unnecessary stress on our back and neck, leading to long-term health problems.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('5- Use a monitor stand. If you are working all day in front of a computer, use a monitor stand that supports your body position when facing the monitor. This will help keep your screen at eye level and prevent you from hunching over.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,)
              ,Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('6- Exercise regularly. Exercise helps you strengthen the muscles that support good posture and release tension in your joints and muscles. Make sure to include some exercises that focus on strengthening your back muscles',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,)
              ,Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('7- Take breaks often between long sessions like pediatric sessions . When sitting for more prolonged periods, taking breaks every 20 minutes is best to move around and stretch out your muscles, which will help keep them from getting stiff and tense.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,)
              ,Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('8- Be aware of your posture. Pay attention to your sitting, standing, and moving throughout the day. The more aware you are of your posture, the easier it will be to correct it.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 20,)
              ,Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('9- Maintaining proper posture requires adequate muscle strength, joint motion, and balance, according to the American Chiropractic Association. The following exercises focus on increasing muscle strength and flexibility for better posture.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),textAlign: TextAlign.justify),
              ),
              SizedBox(height: 35,),
              ListTile(
                title: Text('*Bridges',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Text('Bridges help strengthen the gluteal and abdominal muscles, which helps relieve excess stress in the lower back. To do a bridge: Lie on your back with your knees bent and feet flat on the floor. Lift your hips by engaging your core and buttocks muscles. The buttocks and lower back should raise off the ground. Gently lower back down to the starting position.',style: TextStyle(fontSize: 17)),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/pl.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('*Plank',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Column(
                  children: [
                    Text('Plank Pose helps improve posture by strengthening muscles in the shoulders and back as well as the core, glutes, and hamstrings. It also encourages proper alignment of the spine.',style: TextStyle(fontSize: 17)),
                   SizedBox(height: 10,),
                    Text('To plank: Get down onto your hands and knees. Make sure that your hands align with your shoulders and your knees align with your hips. Come onto the balls of the feet by lifting your heels and straightening your legs. The body should form a straight line. Keep your chest open and shoulders back. Hold this position for 30–60 seconds.',style: TextStyle(fontSize: 17)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/77.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('*Hip flexor stretch',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                subtitle: Column(
                  children: [
                    Text('This stretch gently opens the hips and improves balance and coordination, which can help improve posture.',style: TextStyle(fontSize: 17)),
                    SizedBox(height: 10,),
                    Text('To do a hip flexor stretch: Kneel with your right knee on the ground. Place your left foot in front and bend your knee at a 90-degree angle. Keep your back straight, chest forward, and head upright. Place both hands on your left thigh. Gently press your hips forward and hold the position for 20­–30 seconds. Repeat this stretch on the right side.',style: TextStyle(fontSize: 17)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/11.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 20,),

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

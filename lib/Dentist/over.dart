import 'package:flutter/material.dart';
import 'package:treatment/Dentist/over/claw.dart';
import 'package:treatment/Dentist/over/low%20back.dart';
import 'package:treatment/Dentist/over/patient.dart';
import 'package:treatment/Dentist/over/rubber.dart';
import 'package:treatment/Dentist/over/tumb.dart';
import 'package:treatment/Dentist/over/wrist.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://youtu.be/VA5AKyjqBU4');
final Uri uurl = Uri.parse('https://youtu.be/HK0vxnjSZZk');
final Uri uuurl = Uri.parse('https://youtu.be/5udJOvgNUOA');

class over extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child:
        Center(
          child: SingleChildScrollView(
            child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>low()));
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Low Back Pain",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>wrist()));

                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Wrist Bend",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>rubber()));
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Rubber Ball Squeez",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>tumb()));

                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Thumb Circles",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>claw()));

                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Claw Stretch",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>patient()));

                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Patient Positioning",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
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
                GestureDetector(
                  onTap: () => llaunchUrl() ,
                  child: Container(
                    height: 60,
                    width: 400,
                    child: Center(
                      child: Text(
                        "Click here to Check video",
                        style: (TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _launchUrl(),
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
                SizedBox(height: 20,),
              ],
            ),
          ),
        )
        ,
      ),
    );
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
    Future<void> llaunchUrl() async {
      if (!await launchUrl(uurl)) {
        throw 'Could not launch $uurl';
      }
    }
  Future<void> lllaunchUrl() async {
    if (!await launchUrl(uuurl)) {
      throw 'Could not launch $uuurl';
    }
  }
}

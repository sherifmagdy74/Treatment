import 'package:flutter/material.dart';
import 'package:treatment/nurse/over/low.dart';
import 'package:treatment/nurse/over/neck.dart';
import 'package:url_launcher/url_launcher.dart';

import 'over/knee.dart';



final Uri _url = Uri.parse('https://youtu.be/W145GgBrrMc');
final Uri url = Uri.parse('https://youtu.be/jH3jTbxcci0');
final Uri uurl = Uri.parse('https://youtu.be/5udJOvgNUOA');


class over extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('How To Overcome'),),
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
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>neck()));

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
                          "Neck and shoulder pain",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>knee()));
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
                          "Knee pain",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),

                      ],
                    ),
                  ),
                ),
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
                    onTap: () => _launchUrl(),
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
  // #######################################
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

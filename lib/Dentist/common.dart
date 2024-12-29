import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:url_launcher/url_launcher.dart';




class common extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Most common problems"),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 170,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.teal,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Shoulder",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            "pain",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.teal,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Forward",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            "head",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 170,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.teal,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Secondary",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            "thoracic",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            "curve",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.teal,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Neck",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            "pain",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 140,
                  width: 315,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.teal,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Tendinitis/tenosynovitis, DeQuervain’s ",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        "disease,Trigger finger, Carpal Tunnel ",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        "syndrome, Guyon’s syndrome",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(),

                SizedBox(
                  height: 40,
                ),
                ClipPath(
                  clipper: TriangleClipper(),
                  child: Container(
                    height: 100,
                    width: 200,
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Due to",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center),

                        Text("",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.center),
                        Text("",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),

                Card(
                  color: Colors.teal,
                   elevation: 15.0,
                  child: ListTile(
title:Text('1* Improper adjustment of the dental stool',style: TextStyle(color: Colors.white, fontSize: 17), textAlign: TextAlign.start),
                  ),
                ),
                SizedBox(height: 20,),
                Card(
                  color: Colors.teal,
                   elevation: 15.0,
                  child: ListTile(
title:   Text('2* Poor fit of the stool to the operator',style: TextStyle(color: Colors.white, fontSize: 17), textAlign: TextAlign.start),
 )),
                SizedBox(height: 20,),
                Card(
                    color: Colors.teal,
                    elevation: 15.0,
                    child: ListTile(
                      title: Text('3* Poor body mechanics in the operatory',style: TextStyle(color: Colors.white,  fontSize: 18,),),
                    )),
                SizedBox(height: 20,),
                Card(
                    color: Colors.teal,
                    elevation: 15.0,
                    child: ListTile(
                      title: Text('4* Incorrect patient positioning ',style: TextStyle(color: Colors.white, fontSize: 18), ),
                    )),
                SizedBox(height: 20,),
                Card(
                    color: Colors.teal,
                    elevation: 20.0,
                    child: ListTile(
                      title:Text('5* Incorrect adjustment of double articulating headrest vs.flat headrest',style: TextStyle(color: Colors.white, fontSize: 18,), ),
                    )),
                SizedBox(height: 20,),
                Card(
                    color: Colors.teal,
                    elevation: 8.0,
                    child: ListTile(
                      title:Text('6* Forceful Exertion (like tooth extractions)',style: TextStyle(color: Colors.white, fontSize: 18,), ),
                    )),
                SizedBox(height: 20,),
                Card(
                    color: Colors.teal,
                    elevation: 15.0,
                    child: ListTile(
                      title:Text('7* Chronic, repetitive movements of the hand and wrist, especially with the hand in ‘pinch’ position, movements in which the wrist is deviated from neutral posture into an abnormal or awkward position, working for too long period without allowing rest or alternation of hand and forearm muscles; mechanical stresses to digital nerves from sustained grasps to sharp edges on instrument handles, forceful work and extended use of vibratory instruments',style: TextStyle(color: Colors.white, fontSize: 18,), ),
                    )),
                SizedBox(height: 20,),


              ],
            )),
      ),
    );
  }
}





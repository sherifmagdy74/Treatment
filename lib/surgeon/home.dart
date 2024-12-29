import 'package:flutter/material.dart';

import 'common.dart';
import 'over.dart';

class sur extends StatefulWidget {
  @override
  State<sur> createState() => _surState();
}
class _surState extends State<sur> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Surgeon')),
      body: Container(
        padding: EdgeInsets.all(26),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/su.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20,),
              Text(

               ' The surgeon is responsible for the preoperative diagnosis of the patient, for performing the operation, and for providing the patient with postoperative surgical care and treatment. The surgeon is also looked upon as the leader of the surgical team.',
                textAlign: TextAlign.justify,style: TextStyle(color: Colors.black, fontSize: 18, ),
              ),
              SizedBox(height: 40,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>common()));
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
                            "Most common problems",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:20 ,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>oveer()));

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
                            "How To Overcome",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

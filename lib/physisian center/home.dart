import 'package:flutter/material.dart';
import 'package:treatment/physisian%20center/over.dart';

import 'common.dart';

class ph extends StatefulWidget {
  @override
  State<ph> createState() => _phState();
}
class _phState extends State<ph> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phycisian in emergency center')),
      body: Container(
        padding: EdgeInsets.all(26),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/ph.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 35,),
              Text(

                'Doctors in emergency medicine carry out the immediate assessment and treatment of patients with serious and life-threatening illnesses and injuries.',
                textAlign: TextAlign.justify,style: TextStyle(color: Colors.black, fontSize: 18, ),
              ),
              SizedBox(height: 40,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>most()));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>how()));

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

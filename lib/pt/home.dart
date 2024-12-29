import 'package:flutter/material.dart';
import 'package:treatment/pt/common.dart';
import 'package:treatment/pt/over.dart';

class pt extends StatefulWidget {
  @override
  State<pt> createState() => _ptState();
}
class _ptState extends State<pt> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Physical Therapist')),
      body: Container(
        padding: EdgeInsets.all(17),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/pt.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 35,),
              Text(
                'Physical therapists help patients with injuries and chronic health conditions regain their range of motion, manage their pain, and improve their quality of life.  PTs play a critical role not only in treating musculoskeletal conditions, but also in educating patients about staying fit and preventing future injuries.',
                textAlign: TextAlign.justify,style: TextStyle(color: Colors.black, fontSize: 18, ),
              ),
              SizedBox(height: 40,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>mostt()));

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ovver()));

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

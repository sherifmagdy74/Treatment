import 'package:flutter/material.dart';

import 'common.dart';
import 'over.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dentist'),),
      body: Container(
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/den.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20,),
              Text(
'Dentists diagnose and treat dental issues and help patients develop better oral hygiene regimens. They clean teeth, correct bite issues, perform surgeries and extractions, and perform other duties to ensure that the teeth and mouth are healthy.',
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>over()));
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

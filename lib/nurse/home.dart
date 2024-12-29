import 'package:flutter/material.dart';
import 'package:treatment/nurse/common.dart';
import 'package:treatment/nurse/over.dart';

class nurse extends StatefulWidget {
  @override
  State<nurse> createState() => _nurseState();
}

class _nurseState extends State<nurse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nurse'),
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/happy-lady-with-clipboard-looking-happy_171337-5823.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 30,),
              Text(

               ' Nurses are responsible for recognizing patients symptoms,taking measures within their scope of practice to administer medications, providing other measures for symptom alleviation, and collaborating with other professionals to optimize patients comfort and families understanding and adaptation',
                textAlign: TextAlign.justify,style: TextStyle(color: Colors.black, fontSize: 18, ),
              ),
              SizedBox(height: 40,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>common()));

                    }, child: Container(
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
                          // Text(
                          //   "common",
                          //   style: TextStyle(color: Colors.white, fontSize: 30),
                          // ),
                          // Text(
                          //   "problems",
                          //   style: TextStyle(color: Colors.white, fontSize: 30),
                          // ),
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
                          // Text(
                          //   "Overcome",
                          //   style: TextStyle(color: Colors.white, fontSize: 30),
                          // ),
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

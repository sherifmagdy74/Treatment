import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



final Uri _url = Uri.parse('https://github.com/MoazSalem/iti_FlutterProject');
class about extends StatefulWidget {

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('About App'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
        child: Column(children: [
          Center(
              child: Image.asset(
                "assets/193.jpg",
                height: 200,
                width: 250,
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            "==> Treatment App with a modern UI that uses 6 section to help Medical field members avoid common problems by specialized doctors ",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          SizedBox(height: 20,),
          Text(
            "==> This app was made By students from Group 16 of the fifth year of the Faculty of Physical therapy for the graduation project under the supervision of Professor Dr. Fayez Farouk Al-Shami, Dean of the College.",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          // GestureDetector(
          //   onTap: () => _launchUrl(),
          //   child: Container(
          //     height: 60,
          //     width: 400,
          //     child: Center(
          //       child: Text(
          //         "Click here to Check the App On Github",
          //         style: (TextStyle(
          //             color: Colors.green,
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold)),
          //       ),
          //     ),
          //   ),
          // )
        ]),
      ),
    );


  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://youtu.be/B-fXv6ioxgA');
final Uri uurl = Uri.parse('https://youtu.be/ZG1fBCi0CqI');
final Uri uuurl = Uri.parse('https://youtu.be/5udJOvgNUOA');
class overr extends StatelessWidget {

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
                title: Text('1-Limit exposure time to harmful substances',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/li.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('2-Screen brightness on computers should be adjusted so it doesnt hurt the eye',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('3-Wear protective clothing and gear, like eye proection, face shield, growns, and gloves',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/v.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('4-When using electrical cord put the the circuits away form elements that pose a danger',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Divider(height: 10,color: Colors.black,),
              SizedBox(height: 20,),
              ListTile(
                title: Text('5-Non slippery materials shoud be used on a floor, design shelves to make access to medication easier',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
              ),
              SizedBox(height: 20,),
              Image(image: AssetImage('assets/non.jpg'),fit: BoxFit.fill,width: 270,),
              SizedBox(height: 25,),
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
              ),
              Center(
                child: GestureDetector(
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
              ),
              SizedBox(height: 20,),

            ],
          ),
        ),
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

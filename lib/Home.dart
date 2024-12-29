import 'dart:math';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:treatment/Dentist/home.dart';
import 'package:treatment/pharmacist/home.dart';
import 'package:treatment/physisian%20center/home.dart';
import 'package:treatment/Drawer/profile.dart';
import 'package:treatment/pt/home.dart';
import 'package:treatment/surgeon/home.dart';
import 'package:treatment/Drawer/team.dart';
import 'package:treatment/Firebase/user.dart';
import 'package:workmanager/workmanager.dart';
import 'On boarding/Start Page.dart';
import 'Drawer/about app.dart';
import 'noti/data.dart';
import 'nurse/home.dart';

UserModel User = UserModel(name: "name", email: "email", phone: "phone",age: 'age',specialty: "specialty");
bool isLoading = true;
// #################################################################
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

Future showNotification() async {

  int rndmIndex = Random().nextInt(StaticVars().smallDo3a2.length-1);

  AndroidNotificationDetails androidPlatformChannelSpecifics =
  AndroidNotificationDetails(
    '$rndmIndex.0',
    'Medical',
    importance: Importance.max,
    priority: Priority.high,
    playSound: true,
    enableVibration: true,

  );

  var platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
  );

  await flutterLocalNotificationsPlugin.show(
    rndmIndex,
    'Advice For You',
    StaticVars().smallDo3a2[rndmIndex],
    platformChannelSpecifics,
  );

  /// periodically...but const id && const title,body
  /*await flutterLocalNotificationsPlugin.periodicallyShow(
    Random().nextInt(azkar.length-1),
    'السلام عليكم',
    azkar[Random().nextInt(azkar.length-1)],
    RepeatInterval.everyMinute,
    platformChannelSpecifics,
    androidAllowWhileIdle: true,
    payload: '',
  );*/

}



void callbackDispatcher() {

  // initial notifications
  var initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');

  var initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  WidgetsFlutterBinding.ensureInitialized();

  flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );


  Workmanager().executeTask((task, inputData) {
    showNotification();
    return Future.value(true);
  });
}


// ######################################################
class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  void initState() {

    super.initState();
    getUser();

    // Future.delayed(Duration(seconds: 2) ,(){
    //   Navigator.pushReplacement(context, MaterialPageRoute(
    //       builder:(_) => ()
    //   ));
    // });

    Workmanager().initialize(
        callbackDispatcher,
        isInDebugMode:  false

    );

    Workmanager().registerPeriodicTask(
      "1",
      "Notification from Medical Ergonomics",

      frequency: Duration(minutes: 15),
    );


  }

  Future<void> getUser() async {
    UserModel? temp;
    FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((value) {
      if (value != null) {
        temp = UserModel.fromJson(value.data() as Map<String, dynamic>);
        User = temp!;
        setState(() {
          isLoading = false;
        });
      } else {
        print('Document does not exist on the database');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            drawer: Drawer(
                child: ListView(children: [
              UserAccountsDrawerHeader(
                accountName: Row(
                  children: [
                    Text(
                      'Name:',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Text(
                      User.name,
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                accountEmail: Row(
                  children: [
                    Text(
                      'Email:',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Text(
                      User.email,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile(),
                      ));
                },
                title: const Text("Profile"),
                subtitle: const Text("Info about Personal Data"),
                leading: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person,
                    color: Color(0xFF22A45D),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => about(),
                      ));
                },
                title: const Text("About App"),
                subtitle: const Text("Info about the app"),
                leading: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.info,
                    color: Color(0xFF22A45D),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const devTeam(),
                      ));
                },
                title: const Text("Dev Team"),
                subtitle: const Text("Info about the team behind the app"),
                leading: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.people,
                    color: Color(0xFF22A45D),
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () async {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Start(),
                      ));
                  final prefs = await SharedPreferences.getInstance();
                  FirebaseAuth.instance.signOut();
                  prefs.setBool("LoggedIn", false);
                  //prefs.setString("UID", "0");
                  var snackBar = SnackBar(
                    elevation: 0,
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    content: AwesomeSnackbarContent(
                      title: 'Bye!',
                      message: 'Sign Out Successful',
                      contentType: ContentType.success,
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                title: const Text("Sign Out"),
                leading: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.logout_rounded,
                    color: Color(0xFF22A45D),
                  ),
                ),
              ),
            ])),
            appBar: AppBar(title: Text('Choose Specialty'),),
            body: Container(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: GridView(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1588776814546-daab30f310ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVudGlzdHxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'),width: 300,)),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(40),
                            child: Text(
                              "Dentist",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.black.withOpacity(0.3),
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>sur()));
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1606685622133-ed6fbaaf445c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHN1cmdlb258ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),width: 200,)),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Surgeon",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.black.withOpacity(0.2),
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ph()));
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1582750433449-648ed127bb54?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGRvY3RvcnxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60'),width: 200,)),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Phycisian in emergency center",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.black.withOpacity(0.3),
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>nurse()));
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image(
                                  image: AssetImage(
                                      'assets/yyy.jpg'),height: 200,width: 520,)),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Nurse",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.black.withOpacity(0.3),
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>pt()));
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image(
                                  image: NetworkImage(
                                      'https://plus.unsplash.com/premium_photo-1661767448598-f42428886f1c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8UGh5c2ljYWwlMjBUaGVyYXBpc3R8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),width: 300,)),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Physical Therapist",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.black.withOpacity(0.3),
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>pharma()));
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image(
                                  image: NetworkImage(
                                      'https://plus.unsplash.com/premium_photo-1661770294094-06167872e079?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fHBoYXJtYWNpc3R8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),width: 200,)),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Pharmacist",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.black.withOpacity(0.2),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 170,
                    childAspectRatio: 7 / 9,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                ),
              ),
            ),
          );
  }
}

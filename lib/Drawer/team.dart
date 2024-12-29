import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color mainColor = Color(0xFF22A45D);
class devTeam extends StatelessWidget {
  const devTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Theme.of(context).primaryColor,
        ),
        child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Center(child:

                Column(children: [
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(1.0),
                        borderRadius: BorderRadius.circular(15)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Prof. Dr. Fayez F. Elshamy ",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Supervisor",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Reem Ibrahiem Kortam",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Leader",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('303'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Rodina Asem Mohamed",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('301'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Rawda Essam Lotfy",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('302'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Reem Abd_elsattar Mahmoud",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('304'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Reem Abd_elhady Emara",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('305'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Reem Erfaan Mohamed",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('306'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Reem Magdy Ahmed",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('307'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Reham Ibrahem Badr_Eldin",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('308'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Reham Sabry Ali",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('309'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Reham Abd_elaziz Hmeda",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('310'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Reham Ali Mohammedein",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('311'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Reham Magdy Ibrahem",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('312'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Reham Mofreh Habashi",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('313'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("ziad Saif Mohamed",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('314'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Ziad Othman Elsayed",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('315'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Zeyad Mohamed Fouad",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('316'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Zeinab Ahmed Elnagar",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('317'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Zynab Elsayed ElGhonamy",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('318'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Zienab Basyoune Elhosene",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('319'),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(25)),
                    height: 80,
                    width: double.infinity,
                    child: Center(
                      child: ListTile(
                        title: Text("Zinab Abed Abd_elsatar",
                            style: TextStyle(fontSize: 20, color: Colors.white)),
                        subtitle: Text(
                          "Team Member",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        leading: Text('320'),
                      ),
                    )),

              ]),
            ),
          ),
        )));
  }
}
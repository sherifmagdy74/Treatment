import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:treatment/Firebase/user.dart';



UserModel User = UserModel(name: "name", email: "email", phone: "phone",age: 'age',specialty: "specialty");
bool isLoading = true;
class profile extends StatefulWidget {

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  void initState() {
    super.initState();
    getUser();
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
    return SafeArea(
      child: isLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : Scaffold(
        appBar: AppBar(title: Text('Profile'),),
        body: Center(

          child: Padding(

            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Stack(
                    alignment: Alignment.center,
                    children:
                    [ CircleAvatar(radius:50 ,backgroundColor: Colors.teal[300],),
                      Icon(Icons.person)
                    ]),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Welcome ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    Text(User.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 80,),
                Row(
                  children: [
                    Text('Email : ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    Text(User.email,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text('Phone : ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    Text(User.phone,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text('Age : ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    Text(User.age,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text('Specialty : ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    Text(User.specialty,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
                  ],
                ),
                SizedBox(height: 15,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

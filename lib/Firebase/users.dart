import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> userSetup({required name, required email, required phone,required age,required specialty}) async {
  String uid = FirebaseAuth.instance.currentUser!.uid.toString();
  FirebaseFirestore.instance
      .collection('users')
      .doc(uid)
      .set({'name': name, 'email': email, 'phone': phone,'age':age,'specialty':specialty,});
  return;
}
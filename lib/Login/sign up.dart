import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:treatment/Firebase/users.dart';

import 'log.dart';



Color underLine = Colors.grey.shade300;
late String UID;

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPasswordHidden = true;
  bool isLoading = false;
  String name = "";
  String email = "";
  String phone = "";
  String age = "";
  String specialty = "";
  String password = "";
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value!.length < 2) {
                            return "Name must be at least 2 letters long";
                          }
                        },
                        onChanged: (value) {
                          name = value;
                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: underLine),
                          ),
                          labelText: "Name",
                          prefixIcon: const Icon(Icons.person),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      child: TextFormField(
                        focusNode: emailFocusNode,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value!.length < 5) {
                            return "email must be more 6 letters";
                          }
                        },
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: underLine),
                          ),
                          labelText: "Email",
                          prefixIcon: const Icon(Icons.mail),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      child: TextFormField(
                        onChanged: (value) {
                          phone = value.toString();
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: underLine),
                          ),
                          labelText: "Phone",
                          prefixIcon: const Icon(Icons.phone),
                        ),
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,

                        onChanged: (value) {
                          age = value;
                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: underLine),
                          ),
                          labelText: "Age",
                          prefixIcon: const Icon(Icons.watch_later_outlined),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value!.length < 2) {
                            return "Name must be at least 2 letters long";
                          }
                        },
                        onChanged: (value) {
                          specialty = value;
                        },
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: underLine),
                          ),
                          labelText: "Specialty",
                          prefixIcon: const Icon(Icons.account_circle_rounded),
                        ),
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      child: TextFormField(
                        obscureText: isPasswordHidden,
                        focusNode: passwordFocusNode,
                        validator: (value) {
                          if (value!.length < 8) {
                            return "password must be more 8 letters";
                          }
                        },
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: underLine),
                            ),
                            labelText: "Password",
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                isPasswordHidden = !isPasswordHidden;
                                setState(() {});
                              },
                              icon: Icon(isPasswordHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 5),
                      child: TextFormField(
                        obscureText: isPasswordHidden,
                        validator: (value) {
                          if (value!.length < 8) {
                            return "password must be more 8 letters";
                          }
                        },
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: underLine),
                            ),
                            labelText: "Confirm Password",
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                              onPressed: () {
                                isPasswordHidden = !isPasswordHidden;
                                setState(() {});
                              },
                              icon: Icon(isPasswordHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(35),
                      child: ElevatedButton(
                          child: Text("sign up"),
                          onPressed: () async {
                            isLoading = true;
                            setState(() {});
                            try {
                              isLoading = true;
                              await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: email.toString(),
                                      password: password.toString());
                              await userSetup(
                                  name: name, email: email, phone: phone,age:age,specialty:specialty,);
                              setState(() {
                                isLoading = false;
                              });
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>SignInScreen()),
                              );
                              final prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setBool("LoggedIn", true);

                              var snackBar = SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title: 'Hello There!',
                                  message: 'Sign Up Successful',
                                  contentType: ContentType.success,
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            } catch (e) {
                              setState(() {
                                print(e);
                                isLoading = false;
                              });
                              var snackBar = SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title: 'Something is wrong!',
                                  message: 'Error: ${e.toString()}',
                                  contentType: ContentType.failure,
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          }),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

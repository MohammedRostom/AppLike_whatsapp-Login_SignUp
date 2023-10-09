import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_applicatioaserwerwr/Func/acountenclass.dart';
import 'package:flutter_applicatioaserwerwr/Layoutscreens/home%20_layout.dart';

import 'package:flutter_applicatioaserwerwr/screens/authScreens/Vwithphonenumper.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginscreen extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<loginscreen> {
  final GlobalKey<FormState> _ormKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  UserCredential? userCredential;
  bool _isLoading = false;
  String? EEmail;

  Future<dynamic> _login() async {
    if (_ormKey.currentState!.validate()) {
      final String username = _usernameController.text;
      final String password = _passwordController.text;

      setState(() {
        _isLoading = true;
      });

      try {
        userCredential = await _auth.signInWithEmailAndPassword(
          email: username,
          password: password,
        );

        if (userCredential!.user!.emailVerified == false) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Logged in successfully and emailVerified '),
              duration: Duration(seconds: 2),
            ),
          );
          eVwithpshonenumper();
        } else if (userCredential!.user!.emailVerified == false) {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text("sendemailVerified ??"),
              actions: [
                ElevatedButton(
                  onPressed: _sendVerificationMail,
                  child: Text("Send Email"),
                ),
              ],
            ),
          );
        }
      } catch (e) {
        print(e);
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
    return userCredential?.user?.email;
  }

  void eVwithpshonenumper() {
    setState(() {});
    Duration delayDuration = Duration(seconds: 2);

    Future.delayed(delayDuration, () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => homepagelayout(
                    nameuser: EEmail,
                  )

              //   Vwithphonenumper(
              //     emmil: EEmail,
              //   ),
              ));
    });
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Check if the user canceled the sign-in flow
    if (googleUser == null) {
      throw Exception('Google sign-in was canceled.');
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> _sendVerificationMail() async {
    await userCredential?.user!.sendEmailVerification();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: _isLoading,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: _ormKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a username';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () async {
                      var x = await _login();

                      setState(() {
                        EEmail = x;
                      });
                    },
                    child: Text("Login"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'sgin');
                    },
                    child: Text("Sign Up"),
                  ),
                  IconButton(
                    onPressed: () async {
                      signInWithGoogle();
                    },
                    icon: Icon(Icons.login),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences preferences ;
  bool loading = false;
  bool isLoggedIn = false;

  @override 
  void initState(){
    super.initState();
    isSignedIn ();
      }
    
     void isSignedIn() async{
        setState(() {
          loading = true;
        });
        preferences = await SharedPreferences.getInstance();
        isLoggedIn = await googleSignIn.isSignedIn(); 
        if (isLoggedIn){
                Navigator.pushReplacement(context,
                 MaterialPageRoute(builder: (context)=>HomePage()));
        }
        setState(() {
          loading = false; 
        });
      }

      @override
      Widget build(BuildContext context) {
        return Container(
          
        );
      }
    
     
}
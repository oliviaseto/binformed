import 'package:binformed/pages/nav_bar.dart';
import 'package:binformed/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AuthPage extends StatelessWidget{
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          // user is logged in 
          if(snapshot.hasData){
            return const RootPage();
          }
          // user is not logged in
          else{
            return LoginPage();
          } 
        },
      ),
    );
  }
}
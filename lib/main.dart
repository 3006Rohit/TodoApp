import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  void signup(){
    try {
     await firebaseAuth.createUserWithEmailAndPassword(
          email: 'r3006c@gmail.com', password: '12345');
    }
    catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:
    );
  }
}

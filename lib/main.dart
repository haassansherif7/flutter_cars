import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gam3a_cars_project/firebase_options.dart';
import 'package:gam3a_cars_project/widget/login.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
 
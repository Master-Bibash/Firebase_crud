import 'package:firebase_applicationfffirebase_1/screens/homepage.dart';
import 'package:firebase_applicationfffirebase_1/screens/registerScreen.dart';
import 'package:firebase_applicationfffirebase_1/service/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async{

try {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
       options: const FirebaseOptions(
        apiKey: "AIzaSyBD7O-hQq-rH8qPw2GtZFsmAm2s0dfI8mM",
        appId: "1:506366493277:android:a6d20396bfef72f910c3b4",
        messagingSenderId: "506366493277",
        projectId: "dummy-b92c5",
        
  )
  );
    

  print("initialized firebase");
} catch (e) {
  print("error initializing $e");
  
}
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:StreamBuilder(
        stream: AuthService().firebaseAuth.authStateChanges(),
       builder: (context,snapshot){
        if (snapshot.hasData) {
          return homePage();
          
        }else{
          return Register();
        }
       })
    );
  }
}


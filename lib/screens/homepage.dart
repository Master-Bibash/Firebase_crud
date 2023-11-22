import 'package:firebase_applicationfffirebase_1/screens/addNoteScreen.dart';
import 'package:firebase_applicationfffirebase_1/service/auth_service.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(onPressed: ()async{
                await AuthService().signOut();
          },
           icon: const Icon(Icons.logout))
        ],
      ),
      body: Container(
        child: const Column(
          children: [

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>AddNoteScreen()));

      },
      backgroundColor: Colors.orangeAccent,
      child: Icon(Icons.add),),
    );
  }
}
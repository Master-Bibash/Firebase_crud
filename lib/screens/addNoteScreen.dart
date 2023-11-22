import 'package:flutter/material.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title",style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 30,),
             Text("Description",style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold
            ),),
             TextField(
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                 child: Text("add Note",style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.bold,
                  
                 ),)),
              )




          ],
        ),
        ),
      ),
    );
  }
}
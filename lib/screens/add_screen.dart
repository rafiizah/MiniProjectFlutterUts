import 'package:flutter/material.dart';
import 'package:noteapputs/models/NoteOperation.dart';
import 'package:provider/provider.dart';


class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String titleText;
    late String descriptionText;
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text("NotesHelper", style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Title',
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              onChanged: (value){
                titleText = value;
              },
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Description',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
                onChanged: (value){
                  descriptionText = value;
                },
              ),
            ),
            SizedBox(
              height: 50,
              child: TextButton(
                onPressed: () {
                  Provider.of<NoteOperation>(context, listen: false)
                      .addNewNote(titleText, descriptionText);
                  Navigator.pop(context);
                },
                child: Text('Add Note'),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.indigo),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

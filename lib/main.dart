import 'package:flutter/material.dart';
import 'package:noteapputs/models/NoteOperation.dart';
import 'package:noteapputs/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NoteOperation>(
      create: (context) => NoteOperation(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          home: HomeScreen(),
      ),
    );
  }
}



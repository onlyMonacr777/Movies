import 'package:flutter/material.dart';
import 'package:movies_assignment/HomeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Explorer',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      // colorScheme:ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // useMaterial3: true,
      //  ),
      home:const HomeScreen(),
    );
  }
}







import 'package:exam_app/screens/Details.dart';
import 'package:exam_app/screens/HomeScreeen.dart';
import 'package:exam_app/screens/Details.dart';
//import 'package:exam_app/screens/HomeScreeen.dart';
import 'package:flutter/material.dart';




    void main()
    {
    runApp(
    const MyApp(),
    );
    }
    class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
    '/': (context) =>Details (),

        '/Home': (context) => HomeScreen(),


    },
    );
    }
    }












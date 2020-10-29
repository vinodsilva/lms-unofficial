import                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     'package:flutter/material.dart';

import 'package:sidebar_animation/setup/loginsignuppage.dart';
import 'package:sidebar_animation/ui/pages/add_event.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/ICTlogo-min.png"), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white
      ),
      home: LoginPage(),
      routes: {
        "add_event": (_) => AddEventPage(),
      },
    );
  }
}

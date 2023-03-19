import 'dart:math';

import 'package:businesscard/shared/background_image.dart';
import 'package:businesscard/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: appTheme,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double backGroundHeight = screenWidth * (700 / 1920);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(181, 202, 195, 1),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.up,
        children: [
          SizedBox(
            height: min(backGroundHeight, 350.0),
            width: double.infinity,
            child: const BackgroundImage(
              imageUrl: 'assets/mountain_background.jpg',
            ),
          ),
          SizedBox(
            height: screenHeight * 0.05,
            width: 5,
            child: const Divider(
              color: Color.fromRGBO(181, 202, 195, 1),
            ),
          ),
          Text('Screen Height: $screenHeight'),
          Text('Screen Width: $screenWidth'),
          Container(
            height: 350.0,
            width: 600.0,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                const Text(
                  'Eric Tossell',
                ),
                Text(
                  'IT PROFESSIONAL',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade900,
                  ),
                ),
                Card(
                  color: Colors.green,
                  margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: min((screenWidth * 0.2), 20.0)),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.black87,
                        ),
                        title: Center(
                          child: Text(
                            '+1 555 555 5555',
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black87,
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.black87,
                        ),
                        title: Center(
                            child: Text(
                          'eric@tossell.ca',
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: (screenWidth * 0.4),
                  child: const Divider(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

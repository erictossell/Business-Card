import 'package:businesscard/shared/background_image.dart';
import 'package:flutter/material.dart';

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
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(181, 202, 195, 1),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          verticalDirection: VerticalDirection.up,
          children: [
            const SizedBox(
              height: 200,
              width: double.infinity,
              child: BackgroundImage(
                imageUrl: 'assets/mountain_background.jpg',
              ),
            ),
            const SizedBox(
              height: 250,
              width: 5,
              child: Divider(
                color: Color.fromRGBO(181, 202, 195, 1),
              ),
            ),
            Card(
              color: Colors.white,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 125),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Center(
                  child: Text(
                    '+1 555 555 5555',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
              width: 250,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Text(
              'IT PROFESSIONAL',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.green[900],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Eric Tossell',
              style: TextStyle(
                  fontFamily: 'Exo2',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}

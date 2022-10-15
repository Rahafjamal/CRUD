import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'login.dart';


Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform);

runApp(MaterialApp(home: Myapp(),));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/home.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton.icon(
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Login();
                    }));
                  });
                }),
                label: const Text(
                  "Let's Start !",
                  style: TextStyle(fontSize: 20, fontFamily: 'DancingScript'),
                ),
                icon: Icon(Icons.arrow_forward_outlined),
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyan[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

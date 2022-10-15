import 'package:flutter/material.dart';

import 'package:mmapp/main.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mmapp/screens/addusers.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text(
          "Log in page",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'DancingScript',
          ),
        ),
        backgroundColor: Colors.cyan[600],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/2.jpg'),
            opacity: 200,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                top: 20,
              )),
              CircleAvatar(
                radius: 80,
                child: Image(image: AssetImage("images/people.png")),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(25),
                              child: TextField(
                                controller: email ,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          color: Colors.cyan, width: 1),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    label: Text(
                                      " User name",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.cyan[600],
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'DancingScript',
                                      ),
                                    ),
                                    hintText: "Enter your user name ",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.cyan[600],
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'DancingScript',
                                    ),
                                    prefixIcon: Icon(Icons.people)),
                                maxLines: 1,
                                maxLength: 20,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(25),
                              child: TextField(
                                controller:password ,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: BorderSide(
                                          color: Colors.cyan, width: 1),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    label: Text(
                                      " password",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.cyan[600],
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        fontFamily: 'DancingScript',
                                      ),
                                    ),
                                    hintText: "Please enter your password",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.cyan[600],
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'DancingScript',
                                    ),
                                    prefixIcon: Icon(Icons.people)),
                                maxLines: 1,
                                maxLength: 20,
                                textAlign: TextAlign.center,
                                obscureText: true,
                              ),
                            ),
                          ),
                          
                          Center(
                            child: TextButton(
                              onPressed: () async {
                              var information = FirebaseAuth.instance;
                              
                          UserCredential Users = await information.createUserWithEmailAndPassword(
                                email: email.text.trim(),
                                password: password.text.trim() );
                              
                            }, child: Text("sign in")),
                          ),
                          

                          ElevatedButton.icon(
                            onPressed: (() {
                              setState(() {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const HomePage();
                                }));
                              });
                            }),
                            label: const Text(
                              "CRUD !",
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'DancingScript'),
                            ),
                            icon: Icon(Icons.arrow_forward_outlined),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyan[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return scaffold;
  }
}

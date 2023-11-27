
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp3());
}

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Login page",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "App Bar",
          style: TextStyle(
            color: Color.fromARGB(255, 173, 225, 62),
          ),
        ),
      ),
    
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text(
          "click",
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 14, 84, 116),
      drawer: Container(
        width: 300,
        height: 600,
        color: const Color.fromARGB(255, 219, 203, 203),
        child: const Text(
          "I have extra options ",
          style: TextStyle(
              color: Colors.blue, fontSize: 70, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const Text(
            "Welcome to facebook",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "your data is encrypted",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 244, 54, 101)),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(hintText: "User login ID"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(hintText: "Password"),
            ),
          ),
          TextButton(
            onPressed: () {
              // Add logic for Forgot Password
            },
            child: const Text("Forgot Password"),
          ),
          ElevatedButton(
            onPressed: () {
              // Add login logic here
            },
            child: const Text("Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black)),
          ),
          const Text("or sign in with Google"),
          ElevatedButton(
            onPressed: () {
              // Add Google sign-in logic here
            },
            child: const Text("Google",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
 
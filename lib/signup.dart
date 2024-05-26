import 'package:flutter/material.dart';
import 'package:plantly/main.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 198, 170),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 0), // Added height for top padding
          SingleChildScrollView(
            scrollDirection: Axis
                .horizontal, // Added SingleChildScrollView to handle overflow
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    'assets/images/flowers.png', // Path to your local image
                    width: 120,
                    height: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    'assets/images/flower1.png', // Path to your local image
                    width: 120,
                    height: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    'assets/images/flower2.png', // Path to your local image
                    width: 120,
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.only(
                  right: 40.0, left: 40.0, top: 50.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Bemily432@gmail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "****************",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  Center(
                    child: SizedBox(
                      width: 280,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          backgroundColor: Color.fromARGB(255, 30, 50, 37),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        child: Text("Next"),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                        onPressed: () {},
                        child: Text("Sign in"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

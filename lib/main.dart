import 'package:flutter/material.dart';
import 'package:plantly/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 249, 198, 170), // Light orange background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20), // Add some space at the top
          Padding(
            padding: const EdgeInsets.only(right: 136.0, top: 70),
            child: Text(
              "Welcome to",
              style: TextStyle(fontSize: 35),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200.0),
            child: Text(
              "Plantly.",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(), // Pushes the image and subsequent text to the center
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/plants.png', // Path to your local image
                  width: 350,
                  height: 350,
                ),
                SizedBox(height: 0), // Space between image and text
                Text(
                  "Start growing your favourite plants",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "with our step-by-step guides and",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "helpful tips.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Spacer(), // Pushes the content to the center
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                4,
                (index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.white,
                      ),
                    )),
          ),
          SizedBox(height: 20), // Space between dots and button
          SizedBox(
            width: 200, // Adjust the width as needed
            height: 50, // Adjust the height as needed
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(50), // Set the border radius
                ),
                backgroundColor: Color.fromARGB(255, 30, 50, 37),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp1()),
                );
              },
              child: Text("Get Started"),
            ),
          ),
          SizedBox(height: 20), // Space at the bottom
        ],
      ),
    );
  }
}

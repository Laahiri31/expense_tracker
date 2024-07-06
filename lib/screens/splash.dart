import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/app_button_widget.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6E9),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Your Persnolized",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(201, 0, 0, 0), // Set your desired text color
                  fontFamily: 'Roboto', // Set your desired font family
                  letterSpacing: 1.2, // Adjust letter// Set underline thickness
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Expenditure Tracking App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                 color: Color.fromARGB(201, 0, 0, 0), // Set your desired text color
                  fontFamily: 'Roboto', // Set your desired font family
                  letterSpacing: 1.2, // Adjust letter// Set underline thickness
                ),
              ),
              
            ),
            SizedBox(height: 20),
            Image.asset(
              "images/logo_1.png",
              width: 400, // Adjust the width as needed
              height: 400,
            ),
            const SizedBox(
                height: 20), // Add some space between logo and buttons
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AppbuttonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed('/signin');
                },
                title: "Sign In",
                titleColor: Color(0xFF1C3146),
                backgroundColor: Color(0xFFFEC107),
                borderColor: Colors.black,
              ),
            ),
            SizedBox(height: 20), // Add a gap of 10 pixels between the buttons
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: AppbuttonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed('/signup');
                },
                title:
                    "Sign Up", // Changed the title to "Sign Up" for the second button
                titleColor: Color(0xFF1C3146),
                backgroundColor: Color(0xFFFEC107),
                borderColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

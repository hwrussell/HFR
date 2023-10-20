import 'package:flutter/material.dart';

void main() {
  runApp(HfrSportApp());
}

class HfrSportApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add logic for any necessary initializations here, such as data loading.
    // After a delay, navigate to the home page or the login page.
    Future.delayed(Duration(seconds: 2), () {
      // Replace with your desired navigation logic.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('Images/HFR.jpg'), // Your logo
            SizedBox(height: 20),
            Text(
              'HFR SPORT',
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HFR SPORT', style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white, // Background color
      body: Center(
        child: Text(
          'Welcome to HFR SPORT',
          style: TextStyle(
            color: Colors.green,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

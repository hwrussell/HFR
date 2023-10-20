import 'package:flutter/material.dart';


void main() {
  runApp(HfrSportApp());
}

class HfrSportApp extends StatelessWidget {
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
      appBar: AppBar(
        title: Text('HFR SPORT', style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('Images/HFR.jpg'), // Your logo
            SizedBox(height: 30),
            Text(
              'Welcome to HFR SPORT',
              style: TextStyle(
                color: Colors.green, // Text color
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildFeatures(),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatures() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.sports_soccer, color: Colors.green),
          title: Text('Soccer', style: TextStyle(color: Colors.green)),
        ),
        ListTile(
          leading: Icon(Icons.sports_basketball, color: Colors.green),
          title: Text('Basketball', style: TextStyle(color: Colors.green)),
        ),
        ListTile(
          leading: Icon(Icons.sports_tennis, color: Colors.green),
          title: Text('Tennis', style: TextStyle(color: Colors.green)),
        ),
        ListTile(
          leading: Icon(Icons.sports_baseball, color: Colors.green),
          title: Text('Baseball', style: TextStyle(color: Colors.green)),
        ),
        ListTile(
          leading: Icon(Icons.sports_volleyball, color: Colors.green),
          title: Text('Volleyball', style: TextStyle(color: Colors.green)),
        ),
      ],
    );
  }
}

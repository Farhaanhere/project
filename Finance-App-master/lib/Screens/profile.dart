import 'package:flutter/material.dart';
import 'package:managment/Screens/home.dart';
import 'package:managment/Screens/screen_about.dart';
import 'package:managment/Screens/screen_accunt.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 47, 125, 121),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
                // backgroundImage: AssetImage('assets/user_icon.png'),
                child: Icon(
                  Icons.person,
                  size: 25,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Prince Riyas',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '@prince_pr',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Add functionality for button 1
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => screenaccount()));
                },
                icon: Icon(Icons.account_circle),
                label: Text('Account Info'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 47, 125, 121),
                  onPrimary: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  // Add functionality for button 2
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (ctx) => screen_login));
                },
                icon: Icon(Icons.security),
                label: Text('Login and Security'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 47, 125, 121),
                  onPrimary: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  // Add functionality for button 3
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => screenabout()));
                },
                icon: Icon(Icons.info),
                label: Text('About Us'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 47, 125, 121),
                  onPrimary: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

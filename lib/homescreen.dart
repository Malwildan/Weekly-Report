import 'package:flutter/material.dart';
import 'package:handson1/profilescreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to The Department of Front-End at BCC",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.asset('assets/logofe.jpg', height: 200),
              SizedBox(height: 24),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profilescreen(),),);
              }, child: Text("Let's Go")),
            ],
          ),
        ),
      ),
    );
  }
}

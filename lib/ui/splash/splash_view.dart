
import 'package:flutter/material.dart';
import 'package:hci_project/ui/onboarding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
 Future.delayed(Duration(seconds: 3),(){
   Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
 });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Light blue background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Placeholder for the logo (replace with your image asset)
            Container(
              width: 150,
              height: 150,
              child: Image.asset(
                'assets/images/Logo.png', // Placeholder image
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),
            // Text "Evently" below the logo
            // Text(
            //   'Evently',
            //   style: TextStyle(
            //     fontSize: 36,
            //     fontWeight: FontWeight.bold,
            //     color: Color(0xFF3B82F6), // Blue color for text
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
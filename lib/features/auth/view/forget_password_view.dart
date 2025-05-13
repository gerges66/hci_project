
import 'package:flutter/material.dart';
import 'package:hci_project/constant/colors.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black), // Or customize the back button
        title: const Text(
          'Forget Password',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/forgetpass.png', // Replace with your image path
                height: 250.0, // Adjust the height as needed
              ),
              const SizedBox(height: 32.0),
              SizedBox(
                width: double.infinity, // Make the button take full width
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the reset password action
                    print('Reset Password button pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor, // Match the button color
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    textStyle: const TextStyle(fontSize: 18.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue.shade50, // Match the background color
    );
  }
}
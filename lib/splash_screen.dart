import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/comm 1.png',
              fit: BoxFit.cover,
            ),
          ),
          // Positioned widget for the logo
          Positioned(
            top: 312, // Adjust this value to move the logo down
            left: 47,
            right: 47,
            bottom: 400,
            child: Image.asset(
              'assets/logo/App Logo.png',
              width: 336,
              height: 46,
            ),
          ),
          // Button at the bottom center
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 250), // Space from the bottom
              child: SizedBox(
                width: 225,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFD5700).withOpacity(0.72),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Get Started'),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 30),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
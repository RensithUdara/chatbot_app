import 'package:chatbot_app/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Changed to a cleaner background color
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 24.0), // Added padding for better layout
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Animated bot graphic
              Lottie.asset(
                'lib/asset/bot.json',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                  height: 30), // Increased spacing for visual balance

              // Title or description
              Text(
                'Welcome to ChatBot!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Your AI assistant is ready to help you!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // Start button
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatPage(),
                    ),
                  );
                },
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                    gradient: const LinearGradient(
                      // Added gradient
                      colors: [
                        Color(0xFF6DD5FA),
                        Color(0xFF2980B9),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      // Added shadow for a 3D effect
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Let\'s Start!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

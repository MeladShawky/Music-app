import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.20, -0.98),
            end: Alignment(-0.2, 0.98),
            colors: [
              ColorMangers.kPrimaryColor,
              ColorMangers.kSecandPrimaryColor.withOpacity(0.54),
            ],
          ),
        ),
        child: Center(
          child: Image(
            width: 200,
            height: 200,
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
      ),
    );
  }
}

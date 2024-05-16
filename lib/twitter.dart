import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class Twitter extends StatelessWidget {
  static const String routeName = 'twitter';
  const Twitter({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'WOW Pizza',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          leading: OverflowBox(
            maxWidth: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: SvgPicture.asset(
                    'assets/images/face.svg',

                    height: 24,
                    width: 24,
                    // ignore: deprecated_member_use
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: SvgPicture.asset(
                    'assets/images/twitter.svg',
                    height: 24,
                    width: 24,
                    // ignore: deprecated_member_use
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Logic for Twitter login
                },
                child: const Text('Log In with Twitter'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Logic for Twitter signup
                },
                child: const Text('Sign Up with Twitter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

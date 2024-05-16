// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class Facebook extends StatelessWidget {
  static const String routeName = 'facebook';
  const Facebook({super.key});

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
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email or Phone',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async {
                  final result = await FacebookAuth.instance.login();

                  if (result.status == LoginStatus.success) {
                    // Login successful, proceed with your app logic
                    final accessToken = result.accessToken;
                    print('Access Token: $accessToken');
                  } else if (result.status == LoginStatus.cancelled) {
                    print('Login cancelled by user');
                  } else {
                    print('Login failed');
                  }
                },
                child: Text('Log In with Facebook'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
              Icon(
                Icons.person,
                size: 100,
              ),
              Text('Solahudeen Slzk',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 30)),
              Text('Thialand'),

            ],
          ),
        ),
      ),
    );
  }
}

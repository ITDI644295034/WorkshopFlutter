import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            CircleAvatar(
              radius: 90,backgroundImage: NetworkImage('https://i.pinimg.com/564x/e7/14/a8/e714a8f942079ece09f5156153173adf.jpg'),
            ),
            Text('Solahudeen Slk')
          ],
        ),
      )),
    );
  }
}

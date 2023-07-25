import 'package:flutter/material.dart';
import 'package:upskills/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPage_State();
}

class LoginPage_State extends State<LoginPage> {
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                child: Text('Welcome Back',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 23,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                child: Text('Plase enter your account here',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _buildUsername(),
            SizedBox(
              height: 10,
            ),
            _buildPassword(),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: _buildButton(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    child: Text(
                      'Register ?',
                      style: TextStyle(
                        color: Colors.blueAccent,fontSize: 20,fontWeight: FontWeight.bold,
                      ),
                    ), onTap:(){
                    Navigator.pushNamed(context, AppRoute.register);
                  },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildUsername() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent[100],
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            controller: _username,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: InputBorder.none,
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }

  _buildPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent[100],
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            controller: _password,
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: 'Password',
              border: InputBorder.none,
              labelStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  _buildButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
            padding: EdgeInsets.all(15)),
        onPressed: () {
          if (_username.text == 'admin') {
            Navigator.pushNamed(context, AppRoute.pro);
            print(_username.text);
          } else {
            print('kim' + _username.text);
          }
        },
        child: Text(
          'Sign in',
          style: TextStyle(
            fontSize: 20,
          ),
        ));
  }
}

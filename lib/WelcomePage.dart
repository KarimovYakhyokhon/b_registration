import 'package:flutter/material.dart';

import 'constants.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Image(
                image: AssetImage('assets/b.png'),
                width: 50,
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30),
              child: Text(
                'Welcome to Busble',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 30),
              child: Text(
                'Lorem ipsum dolor sit consetetur \nsadipscing elitr, sed daim',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            SizedBox(height: 20),
            Image(
              image: AssetImage('assets/line.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Username or Email',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'Login to continue',
                  style: TextStyle(fontSize: 20, color: kWhiteColor),
                ),
                color: Colors.blue,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 13,
                width: MediaQuery.of(context).size.width / 1.15,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, spreadRadius: 1)
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image(
                        image: AssetImage('assets/google.png'),
                        width: 20,
                        height: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Continue in with Google',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 13,
                width: MediaQuery.of(context).size.width / 1.15,
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, spreadRadius: 1)
                    ]),
                child: Center(child: Text('Create a Bubble Account',style: TextStyle(color: kWhiteColor,fontSize: 15, fontWeight: FontWeight.w600),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

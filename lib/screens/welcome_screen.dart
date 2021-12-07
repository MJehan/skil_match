import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Container(
                child: Image.network('https://cdn.logojoy.com/wp-content/uploads/2018/08/23161101/5-25.png'),
            ),
            const Center(
              child: Text(
                'Skill Match',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.00,
                ),
              ),
            ),
            const Center(
              child: Text(
                'Find Your Service',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.00,
                ),
              ),
            ),
            const SizedBox(height: 250),

            Container(
              padding: const EdgeInsets.only(left: 47, right: 47),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(5.00),
                  color: Colors.white,
                ),
                child: Expanded(
                  child: Row(
                    children:  <Widget>[
                      const Expanded(
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.pushNamed(context, LogInScreen.id);
                          },
                          icon: const Icon(Icons.logout, size: 30,),
                      )
                      // IconButton(Icons.logout,
                      //   color: Colors.black,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_login_screen.dart';

class LogInScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
            const SizedBox(height: 35),

            Expanded(
              //padding: const EdgeInsets.only(left: 47, right: 47),
              child: Container(
                height: 0,
                decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(114)),
                  color: Colors.white70,
                ),
                child: Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 47, right: 47, top: 30, bottom: 50),
                          child: SingleChildScrollView(
                            child: Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: const <Widget>[
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            'Login',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 30.0),
                                  SingleChildScrollView(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.00),
                                        color: Colors.white,
                                      ),
                                      child: Row(
                                        children:  const <Widget>[
                                          Expanded(
                                            child: TextField(
                                              keyboardType: TextInputType.number,
                                              textAlign: TextAlign.center,
                                              decoration: InputDecoration(
                                                  labelStyle: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 18.00,
                                                  ),
                                                fillColor: Colors.white,
                                                  border: InputBorder.none,
                                                  labelText: 'Phone Number',
                                                  //hintText: 'Phone Number'
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                              child: Icon(Icons.dialpad_sharp, size: 20, color: Colors.grey,),

                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30.0),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.00),
                                      color: Colors.black,
                                    ),
                                    child: Row(
                                      children:  <Widget>[
                                        const Expanded(
                                          child: Text(
                                            'Log In',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: (){
                                            Navigator.pushNamed(context, OTPScreen.id);
                                          },
                                          icon: const Icon(Icons.logout, size: 30, color: Colors.white,),
                                        )
                                        // IconButton(Icons.logout,
                                        //   color: Colors.black,
                                        // ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10.0),
                                  Row(
                                    children: const <Widget>[
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            'Don\'t have an account? Register now',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              //fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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

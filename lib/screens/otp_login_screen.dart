import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OTPScreen extends StatefulWidget {
  static const String id = 'OTP_screen';
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          padding: const EdgeInsets.only(left: 47, right: 47, top: 100, bottom: 50),
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
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.00),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    children:   <Widget>[
                                      const Expanded(
                                        child: TextField(
                                          keyboardType: TextInputType.emailAddress,
                                          textAlign: TextAlign.center,
                                          //onChanged: () {},
                                          decoration: InputDecoration(
                                              fillColor: Colors.white,
                                              border: InputBorder.none,
                                              //labelText: 'Phone Number',
                                              hintText: 'OTP'
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                                          ),
                                        onPressed: null,
                                        child:  const Align(
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            'Resend OTP',
                                            textAlign: TextAlign.right,
                                          ),
                                        ),

                                      ),
                                    ],
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
                                        onPressed: (){},
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

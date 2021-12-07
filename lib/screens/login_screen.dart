import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            const SizedBox(height: 15),

            Expanded(
              //padding: const EdgeInsets.only(left: 47, right: 47),
              child: Container(
                height: 300,
                decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(114)),
                  color: Colors.white,
                ),
                child: Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 47, right: 47, top: 340, bottom: 58),
                          child: Container(
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
                        ),
                      ),
                    ],
                  ),
                  child: Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 47, right: 47, top: 290, bottom: 58),
                      child: Container(
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
                    ),
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

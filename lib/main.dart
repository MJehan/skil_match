import 'package:flutter/material.dart';
import 'package:skill_match/screens/login_screen.dart';
import 'package:skill_match/screens/otp_login_screen.dart';
import 'package:skill_match/screens/registration_first_screen.dart';
import 'package:skill_match/screens/registration_second_screen.dart';
import 'package:skill_match/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LogInScreen.id: (context) => const LogInScreen(),
        OTPScreen.id: (context) => const OTPScreen(),
        RegistrationFirstScreen.id: (context) => const RegistrationFirstScreen(),
        RegistrationSecondScreen.id: (context) => const RegistrationSecondScreen(),
      },
      //home:  const WelcomeScreen(),
    );
  }
}

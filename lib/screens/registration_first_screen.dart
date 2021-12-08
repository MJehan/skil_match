import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:skill_match/screens/registration_second_screen.dart';

class RegistrationFirstScreen extends StatefulWidget {
  static const String id = 'registration_first_screen';
  const RegistrationFirstScreen({Key? key}) : super(key: key);

  @override
  _RegistrationFirstScreenState createState() => _RegistrationFirstScreenState();
}

class _RegistrationFirstScreenState extends State<RegistrationFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[

            Container(
              child: Image.network('https://cdn.logojoy.com/wp-content/uploads/2018/08/23161101/5-25.png',
                height: 180.0,
              ),
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
            const SizedBox(height: 30),

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
                          padding: const EdgeInsets.only(left: 47, right: 47, top: 40, bottom: 50),
                          child: SingleChildScrollView(
                            child: Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: const <Widget>[
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            'Registration',
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
                                  const SizedBox(height: 15.0),
                                  Row(
                                    children: const <Widget>[
                                      Expanded(
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(Icons.circle, size: 15, color: Colors.black,)
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Icon(Icons.circle, size: 15, color: Colors.grey,)
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 30.0),
                                  SingleChildScrollView(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.00),
                                        color: Colors.white,
                                      ),
                                      child: Row(
                                        children:   const <Widget>[
                                          Expanded(
                                            child: TextField(
                                              keyboardType: TextInputType.number,
                                              textAlign: TextAlign.center,
                                              //onChanged: () {},
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15.00,
                                                ),
                                                  fillColor: Colors.white,
                                                  border: InputBorder.none,
                                                  labelText: 'Phone Number',
                                                  //hintText: 'OTP'
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Icon(Icons.dialpad_sharp, size: 20, color: Colors.grey,),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.00),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      children:   const <Widget>[
                                        Expanded(
                                          child: TextField(
                                            keyboardType: TextInputType.emailAddress,
                                            textAlign: TextAlign.center,
                                            //onChanged: () {},
                                            decoration: InputDecoration(
                                              labelStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15.00,
                                              ),
                                                fillColor: Colors.white,
                                                border: InputBorder.none,
                                                labelText: 'Your Name',
                                                //hintText: 'OTP'
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(Icons.person_rounded, size: 20, color: Colors.grey,),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.00),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      children:  <Widget>[
                                        Expanded(
                                          child: FormBuilderDropdown(
                                            name: 'Project',
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(color: Color(0xFF6200EE)),
                                              ),
                                              labelText: 'Select Your Skill',
                                              labelStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            hint: const Center(child: Text('-- Select Your Skill --')),
                                            validator: FormBuilderValidators.compose(
                                                [FormBuilderValidators.required(context)]),
                                            items: <String>['Default', 'NullSoft']
                                                .map((project) => DropdownMenuItem(
                                              value: project,
                                              child: Text(project),
                                            ),
                                            ).toList(),
                                            onSaved: (val) => null,
                                                // setState(() => _user.project = val!.toString()),
                                          ),
                                        ),
                                        const Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(Icons.settings, size: 20, color: Colors.grey,),
                                        ),

                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
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
                                            'Next',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: (){
                                            Navigator.pushNamed(context, RegistrationSecondScreen.id);
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

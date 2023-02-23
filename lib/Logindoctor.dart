import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:flutter_application_project22/patientSelect.dart';
//import 'package:flutter_application_project22/signup2.dart';
// import 'package:flutter_application_project22/signupPati.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:store_app/PatientSelect.dart';
import 'package:store_app/Singup.dart';
import 'package:store_app/constants.dart';

//import 'Constant.dart';

class Loginpatien extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Loginpatien> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // final TextEditingController _proController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(129, 18, 219, 189),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(129, 18, 219, 189),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Bobbers',
                          color: Colors.black),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('IT IS NOT ENOUGH TO DO YOUR BEST'),
                          TyperAnimatedText('START '),
                          TyperAnimatedText(
                              'AND KNOW YOU CAN CREATE YOUR ACCOUNT '),
                        ],
                      ))),
              const SizedBox(
                height: 100,
              ),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.all(30.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CustomTextField(
                              _emailController,
                              hint: 'Email',
                              password: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                              _passwordController,
                              hint: 'Password',
                              obscure: true,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                //Forgot Password Page
                              },
                              child: Container(
                                  alignment: Alignment.centerRight,
                                  child:
                                      const Text("Can't remember password?")),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            print(_emailController.text);
                            print(_passwordController.text);
                            //Validate User Inputs
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(129, 18, 219, 189),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => patientSelect(),
                                    ));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //Navigate to Register Page
                          },
                          child: Row(
                            children: [
                              Text(
                                "Want to join?",
                                style: TextStyle(fontSize: 17),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => signupp(),
                                        ));
                                  },
                                  child: Text(
                                    'Signup',
                                    style: TextStyle(
                                      color: Color.fromARGB(243, 18, 18, 18),
                                      fontSize: 20,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

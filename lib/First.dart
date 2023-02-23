import 'package:flutter/material.dart';
import 'package:store_app/LoginD.dart';
import 'package:store_app/Logindoctor.dart';
import 'package:store_app/constants.dart';
//import 'package:flutter_application_project22/Constant.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

import 'DoctorHome.dart';
//import 'package:flutter_application_project22/DOC.dart';
// import 'package:flutter_application_project22/PD.dart';
// import 'package:flutter_application_project22/loginD.dart';
// import 'package:flutter_application_project22/logindoc.dart';
// import 'package:flutter_application_project22/loginflutter.dart';
//import 'package:flutter_application_project22/loginpati.dart';

// ignore: camel_case_types
class first extends StatelessWidget {
  const first({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var submitTextStyle;
    return Scaffold(
        // appBar: AppBar(),
        body: SingleChildScrollView(
          
          child: Center(
            
              child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(150.0),
          child: Center(
            child: Column(
              children: [
                Text('Login as',
                    style: TextStyle(
                      color: kTextLightColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),
                AnimatedButton(
                  height: 100,
                  width: 300,
                  text: 'Doctor',
                  isReverse: true,
                  selectedTextColor: Colors.black,
                  transitionType: TransitionType.LEFT_TO_RIGHT,
                  //  textStyle: submitTextStyle,
                  backgroundColor: Color.fromARGB(106, 46, 113, 168),
                  borderColor: Color.fromARGB(255, 18, 219, 189),
                  borderRadius: 50,
                  borderWidth: 2,
                   onPress: () {
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loginp(),
                          ));
                  },
                ),
               
                SizedBox(
                  height: 30,
                ),
                AnimatedButton(
                    height: 100,
                    width: 300,
                    text: 'Patien',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    //  textStyle: submitTextStyle,
                    backgroundColor: Colors.blue,
                  borderColor: Color.fromARGB(129, 18, 219, 189),
                    borderRadius: 50,
                    borderWidth: 2,
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loginpatien(),
                          ));
                    }),
                
              ],
            ),
          ),
              )),
            ),
        ));
  }
}

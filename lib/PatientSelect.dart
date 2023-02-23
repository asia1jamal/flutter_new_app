import 'package:flutter/material.dart';

//import 'package:flutter_application_project22/loginpati.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:store_app/Profile.dart';
import 'package:store_app/Vacc.dart';
import 'package:store_app/constants.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:store_app/widgets/home/home_body.dart';
import 'package:store_app/widgets/home/product_cart.dart';


// ignore: camel_case_types
class patientSelect extends StatelessWidget {
   patientSelect({Key key}) : super(key: key);
var currentIndex = 0;
  List<Map> navigationBarItems = [
  {'icon': Icons.local_hospital, 'index': 0},
  {'icon': Icons.calendar_today, 'index': 1},
];

  int _selectedIndex=0;
final TextEditingController searchController 
  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // var submitTextStyle;
    return Scaffold(
      bottomNavigationBar: MoltenBottomNavigationBar(
      selectedIndex: _selectedIndex,
      onTabChange: (clickedIndex) {
        // setState(() {
        //   _selectedIndex = clickedIndex;
        // });
      },
      tabs: [
        MoltenTab(
          icon: Icon(Icons.home),
        ),
        MoltenTab(
          icon: Icon(Icons.home),
        ),
        MoltenTab(
          icon: Icon(Icons.person),
        ),
      ],
   ),
         appBar: AppBar(backgroundColor: kBackgroundColor,
         actions: [IconButton(onPressed: (() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return profile();
                const Icon(Icons.add);

              },
            ),
          );
           
         }), icon: Icon(Icons.person))],),
        body: SingleChildScrollView(
      child: Center(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(150.0),
          child: Center(
            child: Column(
              children: [
                Text('START  WITH',
                    style: TextStyle(
                      color: kTextLightColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),
                AnimatedButton(
                  height: 120,
                  width: 400,
                  text: 'Doctors',
                  isReverse: true,
                  selectedTextColor: Colors.black,
                  transitionType: TransitionType.LEFT_TO_RIGHT,
                  //  textStyle: submitTextStyle,
                  backgroundColor: Color.fromARGB(129, 18, 219, 189),
                  borderColor: Color.fromARGB(255, 120, 107, 107),
                  borderRadius: 50,
                  borderWidth: 2,
                  onPress: () {
                             Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  HomeScreen(),

                          ));
                   
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                AnimatedButton(
                    height: 120,
                    width: 400,
                    text: 'Vaccinations',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    //  textStyle: submitTextStyle,
                    backgroundColor: Color.fromARGB(129, 18, 219, 189),
                    borderColor: Color.fromARGB(255, 120, 107, 107),
                    borderRadius: 50,
                    borderWidth: 2,
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Vacc(),
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

import 'package:flutter/material.dart';
//import 'package:flutter_application_project22/Information.dart';
import 'package:store_app/Information.dart';
// ignore: unused_import

void main() {
  runApp(const Appoin());
}

class Appoin extends StatelessWidget {
  const Appoin({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
return Scaffold(


      bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              //currentIndex: currentIndex,
              onTap: (index) {
              //  setState(() {
              //     currentIndex = index;
              //   });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                  ),
                  label: 'Profile',
                ),
              
              ]),
      appBar: AppBar(
       
      //  title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
        children: [
          Text(
          'INSERT YOUR APPOIMENTS',
        textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,))],
         
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return information();
                 Icon(Icons.add);

              },
            ),
          );
      
      
        
      }), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}


  
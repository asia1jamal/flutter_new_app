import 'package:flutter/material.dart';

import 'DoctorHome.dart';
//import 'package:flutter_application_project22/DOC.dart';

// ignore: camel_case_types
class information extends StatelessWidget {
  const information({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('ADD UN APPOIMENT'),
          const SizedBox(
            height: 15.0,
          ),
          TextFormField(
            onFieldSubmitted: (String value) {
              // ignore: avoid_print
              print('value');
            },
            keyboardType: TextInputType.datetime,
            decoration: const InputDecoration(
              labelText: 'Date',
              prefixIcon: Icon(
                Icons.date_range,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            onFieldSubmitted: (String value) {
              // ignore: avoid_print
              print('value');
            },
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: 'Hospital',
              prefixIcon: Icon(
                Icons.local_hospital,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextFormField(
            onFieldSubmitted: (String value) {
              // ignore: avoid_print
              print('value');
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Time',
              prefixIcon: Icon(
                Icons.time_to_leave,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextFormField(
            onFieldSubmitted: (String value) {
              // ignore: avoid_print
              print('value');
            },
            keyboardType: TextInputType.streetAddress,
            decoration: const InputDecoration(
              labelText: 'Address',
              prefixIcon: Icon(Icons.location_city),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextFormField(
            onFieldSubmitted: (String value) {
              // ignore: avoid_print
              print('value');
            },
            keyboardType: TextInputType.streetAddress,
            decoration: const InputDecoration(
              labelText: 'Address',
              prefixIcon: Icon(Icons.location_city),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: () {
                 Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Appoin();
                const Icon(Icons.add);

              },
            ),
          );
              },
              child: const Text('DONE'),
            ),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp12/form.dart';
import 'package:myapp12/task2.dart';

import 'eg.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
  body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/dark.jpg'),
          fit: BoxFit.cover,
        )
      ),
      child: Column(
        children: [
          Text(
              'New York Times',
              style: TextStyle(fontSize: 30,
                  color: Colors.white54,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.bold)),
        SizedBox(
          height: 450,
        ),
            Text(
                '1300+Journels',
              style: TextStyle(
                fontWeight: FontWeight.w100,
              fontSize: 55,
              color: Colors.white60),
            ),
          Text(
            '150+Contries',
            style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 55,
                color: Colors.white60),
          ),
          Container(
            width: double.infinity,
              height: 70,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white),
                ),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>main1()));
                  },
                child: Text('Continue',style: TextStyle(color: Colors.white54,fontSize: 25)),

          )
          )
        ],
      ),
  ),
      ),
    );
  }
}

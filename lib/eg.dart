import 'package:flutter/material.dart';
import 'package:myapp12/contact.dart';
import 'package:myapp12/grid.dart';
import 'package:myapp12/settings.dart';

import 'filmlist.dart';
class main1 extends StatelessWidget {
  const main1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading:  IconButton(onPressed: (){
          Navigator.pop(context);

        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text('Home'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>settings()));

          }, icon: Icon(Icons.settings))
        ],
      ),
      body: SafeArea(
        child:  Column(
          children: [
            SizedBox(height: 10,),
            ListTile(
                    leading: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>contact2()));
                    }, icon: Icon(Icons.call,size: 25,)),
              title: Text('Call log',style: TextStyle(fontSize: 23),),

                  ),
            Divider(
              thickness: 1.5,
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>grid1()));
              }, icon: Icon(Icons.grid_3x3,size: 25,)),
              title: Text('Grid',style: TextStyle(fontSize: 23),),

            ),
            Divider(
              thickness: 1.5,
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>film()));
              }, icon: Icon(Icons.movie,size: 25,)),
              title: Text('Film list',style: TextStyle(fontSize: 23),),

            ),
            Divider(
              thickness: 1.5,
            ),
          ],
        )


      ),
    );
  }
}

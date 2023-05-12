import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myapp12/style.dart';
class prview extends StatefulWidget {
   prview({Key? key,required this.data,required this.name,required this.sub,required this.dis}) : super(key: key);
var data,name,sub,dis;
  @override
  State<prview> createState() => _prviewState();
}

class _prviewState extends State<prview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Colors.black,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text('${widget.name}',style: htext,),
              SizedBox(width: 5,),
              Text('${widget.sub}',style: bbtext,),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image(image: AssetImage('assets/filim/${widget.data}')),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('${widget.name}',style: btext,),
                ),
                Text('${widget.sub}',style: bbtext,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${widget.dis}',style: dtext,),
            )

          ],
        ),
      ),
    );
  }
}

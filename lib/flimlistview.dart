import 'package:flutter/material.dart';
import 'package:myapp12/eg.dart';
import 'package:myapp12/style.dart';
import 'package:myapp12/v.dart';

import 'data.dart';
import 'filmlist.dart';
class flist extends StatelessWidget {
  const flist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Movies',style:htext),
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>main1()));
        }, icon: Icon(Icons.arrow_back_ios_new)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.amber)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>film()));
          }, icon: Icon(Icons.grid_3x3,color: Colors.amber,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.amber,)),


        ],
      ),
  body:ListView.separated(
      itemBuilder: (context,index){
        return ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>prview(
              data:img[index]['name'],
              name:img[index]['title'],
              sub:img[index]['date'],
              dis:img[index]['disc'],



            )));

          },
          leading: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/filim/${img[index]['name']}')
              )
            ),
          ),
          title: Text('${img[index]['title']}',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman'
              )),
          subtitle:  Text('${img[index]['date']}',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white54,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Copperplate'
              )),
          trailing: Icon(Icons.keyboard_arrow_right,color: Colors.amber,size: 40,),
          // onTap:(){
          //   Navigator.push(context, MaterialPageRoute(builder: (context){
          //     return prview(content: '$index')
          //   }));
          // } ,
        );
      },
      separatorBuilder: (context,index){
        return Divider();
      },
      itemCount: 10),
    );
  }
}

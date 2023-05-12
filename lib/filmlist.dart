
import 'package:flutter/material.dart';
import 'package:myapp12/flimlistview.dart';
import 'package:myapp12/style.dart';
import 'package:myapp12/v.dart';

import 'data.dart';
class film extends StatelessWidget {
  const film({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Movies',style:htext),
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.amber)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>flist()));
          }, icon: Icon(Icons.list,color: Colors.amber,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.amber,)),


        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: img.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>prview(
                          data:img[index]['name'],
                          name:img[index]['title'],
                           sub:img[index]['date'],
                           dis:img[index]['disc'],



                      )));

                    },
                    child: Container(
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                          image: AssetImage('assets/filim/${img[index]['name']}'),fit: BoxFit.cover,),
                          borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 120.0),
                            child: Column(
                              children: [
                                Text('${img[index]['title']}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: img[index]['color'],
                                      fontWeight: FontWeight.bold,
                                        fontFamily: 'Times New Roman'
                                    )),
                                Text('${img[index]['date']}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white54,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Copperplate'
                                    )),
                              ],
                            ),
                          ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

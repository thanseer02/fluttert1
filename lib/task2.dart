import 'package:flutter/material.dart';
import 'package:myapp12/form.dart';
import 'package:myapp12/register.dart';
class task_2 extends StatelessWidget {
  const task_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('Hello there',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 10,),
              Text('Automatic identify verification which enable you ',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.normal),),
              Text('to verify  your identity',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.normal)),
              SizedBox(height: 40,),
              Image(
                      image: AssetImage('assets/images/itchi.jpg')
                  ),
              SizedBox(height: 150,),
              Container
                (
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.cyan[200],
                    borderRadius: BorderRadius.circular(25)

                  ),
                  child: OutlinedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                      },
                      child: Text(
                        'LogIn',style: (
                          TextStyle(
                              color: Colors.black54,fontSize: 18)),
                      )
                  )
              ),
              SizedBox(height: 10,),
              Container(
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.purple,
                  ),
                  child: OutlinedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Formeg()));
                      },
                      child: Text(
                        'SignUp',
                        style: TextStyle(fontSize: 18,
                            color:Colors.white54 ),))),


            ],
          ),
        ),
      ),
    );
  }
}

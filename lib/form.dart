import 'package:flutter/material.dart';
import 'package:myapp12/register.dart';
import 'package:myapp12/screen1.dart';
import 'package:myapp12/task2.dart';
class Formeg extends StatefulWidget {
  const Formeg({Key? key}) : super(key: key);

  @override
  State<Formeg> createState() => _FormegState();
}

class _FormegState extends State<Formeg> {
  var gender;
  var cb1=false;
  var cb2=false;
  var cb3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/log.jpg')
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.black12,width:1.5)
                      ),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 18
                        ),
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.person),
                          border: InputBorder.none,
                          hintText: '   Username'
                          // enabledBorder: OutlineInputBorder(),
                          // focusedBorder: OutlineInputBorder()
                        ),

                      ),
                    ),
                  ),
                ),//text
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.black12,width:1.5)
                      ),
                      child: TextField(
                        style: TextStyle(
                            fontSize: 18
                        ),
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.email),
                            border: InputBorder.none,
                            hintText: '   email'
                          // enabledBorder: OutlineInputBorder(),
                          // focusedBorder: OutlineInputBorder()
                        ),

                      ),
                    ),
                  ),
                ),//text
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.black12,width:1.5)
                      ),
                      child: TextField(
                        style: TextStyle(
                            fontSize: 18
                        ),
                        obscureText: true,

                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye),
                            border: InputBorder.none,
                            hintText: '    Password'
                          // enabledBorder: OutlineInputBorder(),
                          // focusedBorder: OutlineInputBorder()
                        ),

                      ),
                    ),
                  ),
                ),//text
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.black12,width:1.5)
                      ),
                      child: TextField(
                        style: TextStyle(
                            fontSize: 18
                        ),
                        obscureText: true,

                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye),
                            border: InputBorder.none,
                            hintText: '   Confirm Password'
                          // enabledBorder: OutlineInputBorder(),
                          // focusedBorder: OutlineInputBorder()
                        ),

                      ),
                    ),
                  ),
                ),//text
                Row(
                  children: [
                    Container(
                      width: 150,
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Male',style: TextStyle(fontSize: 18),),
                          value: 'male',
                          groupValue: gender,
                          onChanged: (val){
                            setState(() {
                              gender=val;
                            });
                          }),
                    ),
                    Container(
                      width: 150,
                      child: RadioListTile(
                          activeColor: Colors.teal,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Female',style: TextStyle(fontSize: 18),),
                          value: 'Female',
                          groupValue: gender,
                          onChanged: (val){
                            setState(() {
                              gender=val;
                            });
                          }),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 120,
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text('+2'),
                          value: cb1,
                          onChanged: (val){
                            setState(() {
                              cb1=val!;
                            });
                          }),
                    ),
                    Container(
                      width: 120,
                      child: CheckboxListTile(
                        shape:CircleBorder(),

                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('UG'),
                          value: cb2,
                          onChanged: (val){
                            setState(() {
                              cb2=val!;
                            });
                          }),
                    ),
                    Container(
                      width: 120,
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: CircleBorder()
                          )
                        ),
                        child: CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text('PG'),
                            value: cb3,
                            onChanged: (val){
                              setState(() {
                                cb3=val!;
                              });
                            }),
                      ),
                    ),
                  ],
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: OutlinedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));

                        },
                        child: Text(
                          'SignIn',
                          style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal
                      ),
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: OutlinedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));

                        },
                        child: Text(
                          'Back',
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

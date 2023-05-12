import 'package:flutter/material.dart';
import 'package:myapp12/eg.dart';
class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text('Settings',style: TextStyle(color: Colors.white54),),
    leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white54,)),
    backgroundColor: Colors.teal,
  ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.alarm,
              size: 35,
              color: Colors.grey,
            ),
            title: Text('     Alarm',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black54),),
          ),
          ListTile(
            leading: Icon(
              Icons.android,
              size: 35,
              color: Colors.grey,
            ),
            title: Text('     Android',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black54),),
          ),
          ListTile(
            leading: Icon(
              Icons.announcement,
              size: 35,
              color: Colors.grey,
            ),
            title: Text('     Announcement',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black54),),
          ),
          ListTile(
            leading: Icon(
              Icons.apps,
              size: 35,
              color: Colors.grey,
            ),
            title: Text('     Apps',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black54),),
          ),
          ListTile(
            leading: Icon(
              Icons.archive,
              size: 35,
              color: Colors.grey,
            ),
            title: Text('     Archive',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black54),),
          ),
          ListTile(
            leading: Icon(
              Icons.assessment,
              size: 35,
              color: Colors.grey,
            ),
            title: Text('     Assessment',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black54),),
          ),
          ListTile(
            leading: Icon(
              Icons.backup,
              size: 35,
              color: Colors.grey,
            ),
            title: Text('     Backup',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black54),),
          ),

        ],
      ),
    );
  }
}

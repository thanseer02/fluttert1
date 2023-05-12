import 'package:flutter/material.dart';
import 'package:myapp12/settings.dart';
class contact2 extends StatelessWidget {
  const contact2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.pop(context);
            // Add your onPressed code here
          },
        ),
        title: Text('Chat'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add your onPressed code here
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Add your onPressed code here
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white54,
                  child: Image(
                    image: AssetImage('assets/images/rin (2).jpg'),
                  ),
                ),
                title: Text('Person $index'),
                subtitle: Text('$index:00 PM'),
                trailing:Icon(Icons.call)
              );
            },
            separatorBuilder: ((context, index) {
              return Divider(
                thickness: 0.5,
                color: Colors.grey,
              );
            }),
            itemCount: 30
      ),
      )
    );
  }
}

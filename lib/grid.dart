import 'package:flutter/material.dart';
import 'package:myapp12/style.dart';
class grid1 extends StatelessWidget {
  const grid1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Browse Categories'),
        leading: IconButton(onPressed: (){
        Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4
            ),
          children: [
          Column(
            children: [
              Container(
                height:70,
                width: 700,
                child: IconButton(onPressed: (){}, icon:  Image(image: AssetImage('assets/images/dish.png'),))),

              Text('DTH',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),)
            ],
          ),
            Column(
              children: [
                Container(
                    height:70,
                    width: 700,
                    child: IconButton(onPressed: (){}, icon:  Image(image: AssetImage('assets/images/trainpng.png'),))),

                Text('Metro',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),)
              ],
            ),
            Column(
              children: [
                Container(
                    height:70,
                    width: 700,
                    child: IconButton(onPressed: (){}, icon:  Image(image: AssetImage('assets/images/el.png'),))),

                Text('Electricity',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),)
              ],
            ),
            Column(
              children: [
                Container(
                    height:70,
                    width: 700,
                    child: IconButton(onPressed: (){}, icon:  Image(image: AssetImage('assets/images/film-slate.png'),))),

                Text('Movie tickect',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),)
              ],
            ),
            Column(
              children: [
                Container(
                    height:70,
                    width: 700,
                    child: IconButton(onPressed: (){}, icon:  Image(image: AssetImage('assets/images/atm-card.png'),))),

                Text('Credit card',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),)
              ],
            ),
            Column(
              children: [
                Container(
                    height:70,
                    width: 700,
                    child: IconButton(onPressed: (){}, icon:  Image(image: AssetImage('assets/images/phone.png'),))),

                Text('Prepaid',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),)
              ],
            ),
            Column(
              children: [
                Container(
                    height:70,
                    width: 700,
                    child: IconButton(onPressed: (){}, icon:  Image(image: AssetImage('assets/images/telephone.png'),))),

                Text('LandLine',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),)
              ],
            ),
            Column(
              children: [
                Container(
                    height:70,
                    width: 700,
                    child: IconButton(onPressed: (){}, icon:  Image(image: AssetImage('assets/images/hot-sale.png'),))),

                Text('Hot-Sale',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),)
              ],
            ),






          ],
        ),
      ),
    );
  }
}

import 'package:coffe_app/screen/homepage.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
child: Container(
  padding: EdgeInsets.only(top: 100, bottom: 40),
  decoration: BoxDecoration(
    color: Colors.black,
    image: DecorationImage(image: AssetImage("assets/images/coffe1.jpg"),
    fit: BoxFit.cover,
    opacity: 0.6
    ),
  ),
  child: 
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Spacer(flex: 1),
      Text('coffesky', style: TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white,
      ),
      ),
      Column(
        children: [
          Text("welcome to my coffe shop", style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold,letterSpacing: 1, color: Colors.white.withOpacity(0.8)
          ),
          
          ),
          SizedBox(height: 20,),
          InkWell(
            splashColor: Colors.black,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> homepage()));
            },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),

            ),
            child: Text('get start'),

          ),
          
          )
        ],
      )
    ],
  ),
),
    );
  }
}
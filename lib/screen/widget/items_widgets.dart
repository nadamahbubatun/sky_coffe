import 'package:coffe_app/screen/single_items.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
 

  List img = [
    'latte',
    'ice coffe',
    'americano',
    'cappucino',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(physics: NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    shrinkWrap: true,
    childAspectRatio: (150/195),
    children: [
      for(int i = 0; i <img.length; i++) 
      Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.4),
spreadRadius: 1,
blurRadius: 8,
          )
          ]
        ),
        child: Column(
          children: [
           InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => singleitemsScreen(img[1])
      ),
    );
  },
  child: Container(
    margin: EdgeInsets.all(10),
    child: Image.asset(
      'assets/${img[1]}.png',
      width: 120,
      height: 120,
      fit: BoxFit.contain,
    ),
  ),
),

            Padding(padding: EdgeInsets.only(bottom: 8),
            child: Align(
              alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(img[1], style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),
                ),
                SizedBox(height: 10,),
                Text('best coffe', style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),)
              ],
            ),
             )
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$30",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                ),

                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.add,
                  
                  size: 20,
                  color: Colors.white,)
                )
              ],
            ),
            )
          ],
        ),
      )
    ],
    );
}
}
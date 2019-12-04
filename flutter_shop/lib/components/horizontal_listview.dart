import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
         Category(imageLocation: 'images/cats/accessories.png',
          imageCaption: 'Accessories'),  
           Category(imageLocation: 'images/cats/dress.png',
          imageCaption: 'Dresses'),
//           Category(imageLocation: 'images/cats/Formal.png',
//          imageCaption: 'Formal'),
           Category(imageLocation: 'images/cats/informal.png',
          imageCaption: 'Casual'),
//           Category(imageLocation: 'images/cats/Jeans.png',
//          imageCaption: 'Pants'),
           Category(imageLocation: 'images/cats/shoe.png',
          imageCaption: 'shoes'),
           Category(imageLocation: 'images/cats/tshirt.png',
          imageCaption: 'T-Shirts'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({
    this.imageLocation,
    this.imageCaption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child : InkWell(
        onTap: (){},
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(imageLocation,
            width: 80.0,
            height: 40.0 ,),
//              subtitle: Container(
//                 alignment: Alignment.topCenter,
//                 child: Text(imageCaption),
          ),
   //   ),
        ),
      ),
      
    );
  }
}
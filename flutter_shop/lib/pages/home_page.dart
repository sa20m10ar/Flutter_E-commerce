import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_shop/components/horizontal_listview.dart';
import 'package:flutter_shop/components/products.dart';



class HomePage  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // BoxFit boxFit;
    Widget imageCarousel = Container(
      height: 200.0,
      child: Carousel(
        //  boxFit = BoxFit.cover,
        images : [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay : false,
        animationCurve:Curves.fastLinearToSlowEaseIn,
        animationDuration:Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,

      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title:Text( 'Fashion App'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,
            color: Colors.white,),
              onPressed:(){} ),
          IconButton(icon: Icon(Icons.shopping_cart
            ,color: Colors.white,),
              onPressed:(){} )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Drawer Header
            UserAccountsDrawerHeader(accountName: Text('Samar'),
                accountEmail: Text('smar.frag@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color:Colors.white),), ),
                decoration : BoxDecoration(color : Colors.red)
            ),
            // Body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.red),
              ),
            ), InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.red),
              ),
            ), InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ), InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.red),
              ),
            ), InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.red),
              ),
            ), InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help , color: Colors.red),
                )
            ) ],
        ),
      ),
      body: Column(
        children: <Widget>[
          // Image Carousel
          imageCarousel,
          Padding(padding: EdgeInsets.all(8.0),
            child: Text('Category',style: TextStyle(fontWeight: FontWeight.bold,),),),
          // Horizontal ListView Begins here
          HorizontalList(),
          // Grid View
          Padding(padding: EdgeInsets.all(25.0),
            child: Text('Recent Products',style: TextStyle(fontWeight: FontWeight.bold,),),),
          Flexible(
//             height: 320.0,
            child: Products(),
          )

        ],
      ),
    );
  }
}
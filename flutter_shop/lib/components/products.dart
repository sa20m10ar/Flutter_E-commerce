import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/product_details.dart';

class Products extends StatelessWidget {
  var productList =[
    {
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "old_price":120,
      "price":85,
    },
    {
      "name":"Dress",
      "picture":"images/products/dress1.jpeg",
      "old_price":100,
      "price":80,
    },
    {
     "name":"Hills",
      "picture":"images/products/hills1.jpeg",
      "old_price":100,
      "price":80,
    },
    {
      "name":"Skirt",
      "picture":"images/products/skt1.jpeg",
      "old_price":100,
      "price":80,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
      itemBuilder: (BuildContext context , int index){
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: SingleProduct(
            prodName: productList[index]['name'],
            prodPicture: productList[index]['picture'],
            prodOldPrice: productList[index]['old_price'],
            prodPrice: productList[index]['price'],
            ),
        );
      },
    );
  }
}
class SingleProduct extends StatelessWidget {
  final prodName ;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;

  SingleProduct({this.prodName,this.prodPicture
  ,this.prodOldPrice,this.prodPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prodName,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(
              //here we are passing the values of the product to the product details page
              MaterialPageRoute(builder: (context)=> ProductDetails(
                productDetailName: prodName,
                productDetailOldPrice: prodOldPrice,
                productDetailPrice: prodPrice,
                productDetailPicture: prodPicture,
              ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(prodName,style:TextStyle(fontWeight:FontWeight.bold, )),
                  title: Text("\$$prodPrice",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800),),
                  subtitle:  Text("\$$prodOldPrice",style: TextStyle(color: Colors.black54,
                  fontWeight: FontWeight.w800 ,
                  decoration: TextDecoration.lineThrough),),
                ),
              ),
              child: Image.asset(prodPicture,
              fit:BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
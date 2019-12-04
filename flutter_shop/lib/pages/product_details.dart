import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailPrice;
  final productDetailOldPrice;
  final productDetailPicture;

  ProductDetails(
      {this.productDetailName,
      this.productDetailOldPrice,
      this.productDetailPrice,
      this.productDetailPicture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('Fashion App'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 300.0,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.productDetailPicture),
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      widget.productDetailName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "\$${widget.productDetailOldPrice}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "\$${widget.productDetailOldPrice}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),

          // ============== First Buttons =================
          Row(
            children: <Widget>[
              // ==== the Size Button =====
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Size"),
                        content: Text("choose the size"),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text("close"),
                          )
                        ],

                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Size")),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              // ==== the color Button =====
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                     showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Color"),
                        content: Text("choose the Color"),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text("close"),
                          )
                        ],

                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Color")),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              // ==== the Quantity Button =====

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                     showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Quantity"),
                        content: Text("choose the Quantity"),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text("close"),
                          )
                        ],

                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Qty")),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          // ================= Second Buttons ===================
          Row(
            children: <Widget>[

              // ==== the Buy Now Button =====

              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy Now"),
                ),
              ),
            // =========== the Add to shopping cart Button ===============
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),

          // ============ the Favourite Button =============
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ],
          ),

                         Divider(),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text("The decade that brought us Star Trek and Doctor Who also resurrected Cicero—or at least what used to be Cicero—in an attempt to make the days before computerized design a little less painstaking."),

          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Product Name",style : TextStyle(color: Colors.grey)),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.productDetailName),)
            ],
          ),

          // Remember to add Product Brands
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Product Brand",style : TextStyle(color: Colors.grey)),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text("Brand X"),)
            ],
          ),
          // Remember to add Product Conditions
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Product Condition",style : TextStyle(color: Colors.grey)),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text("Available"),)
            ],
          ),
        ],
      ),
    );
  }
}

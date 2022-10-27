import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_add/product_details.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(body: Products()),
  ));
}

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Card(
          elevation: 5,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.95,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[700],
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                color: Colors.grey[800],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Parts/Materials',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: ListView.separated(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return ProductDetails(
                              uid: '75834',
                              item_Name: 'Item Name',
                              price: '100',
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 5,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

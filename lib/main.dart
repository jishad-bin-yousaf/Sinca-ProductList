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
            // height: MediaQuery.of(context).size.height * 0.95,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[700],
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                color: Colors.grey[800],
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Parts/Materials',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ProductDetails(item_Name: "dairyMilk", uid: "1395"),
                      ),
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

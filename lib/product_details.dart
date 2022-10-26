import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  var uid;
  var item_Name;

  ProductDetails({required this.uid, required this.item_Name});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 3,
              ),
              Column(
                children: [
                  Text(
                    "UID",
                    style: TextStyle(color: Colors.grey[600], fontSize: 9, letterSpacing: 1),
                  ),
                  Text(
                    uid,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "Item Name",
                    style: TextStyle(color: Colors.grey[600], fontSize: 9, letterSpacing: 1),
                  ),
                  Text(item_Name),
                  SizedBox(
                    height: 10,
                  )
                ],
              )
            ],
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("Price 5")],
          )),
        ],
      ),
    );
  }
}

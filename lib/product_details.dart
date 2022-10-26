import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  var uid;
  var item_Name;

  ProductDetails({required this.uid, required this.item_Name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 5),
        color: Color.fromARGB(255, 255, 255, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "UID",
                      style: TextStyle(color: Colors.grey[600], fontSize: 9, letterSpacing: 1),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Item Name",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      uid,
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      item_Name,
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Wrap(
                  children: [
                    Column(
                      children: [
                        // for trailing area.....
                      ],
                    )
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}

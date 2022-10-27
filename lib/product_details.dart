import 'package:flutter/material.dart';
import 'package:product_add/quantitiy.dart';

class ProductDetails extends StatelessWidget {
  var uid;
  var item_Name;
  var price;
  String tax;
  String disc;
  String discPercent;
  String grandTotal;

  ProductDetails({required this.uid, required this.item_Name, required this.price, this.tax = "0", this.disc = "0", this.discPercent = "0", this.grandTotal = "0"});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                "Price\t",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                price,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                price,
                                style: TextStyle(fontSize: 13),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '(incl ',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 10,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: tax,
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                                    ),
                                    TextSpan(text: ' % Tax)'),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            height: 30,
                            child: VerticalDivider(
                              color: Color.fromARGB(255, 81, 81, 81),
                              thickness: 0.5,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                "Disc. ",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                disc,
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          Text(
                            discPercent,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Quantity(),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Grand Total",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            grandTotal,
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Ink(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.red),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Center(
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.black,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

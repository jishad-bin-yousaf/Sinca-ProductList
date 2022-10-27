import 'package:flutter/material.dart';

class Quantity extends StatefulWidget {
  const Quantity({super.key});

  @override
  State<Quantity> createState() => _QuantityState();
}

int qtyValue = 1;
final TextEditingController _controller = TextEditingController(text: qtyValue.toString());

class _QuantityState extends State<Quantity> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
            setState(() {
              qtyValue--;
              _controller.text = qtyValue.toString();
              print(qtyValue);
            });
          },
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
                  Icons.remove,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 30,
          //    height: 26,
          child: TextFormField(
            controller: _controller,
            decoration: InputDecoration(
              label: Text(
                "  Qty",
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              qtyValue++;
              _controller.text = qtyValue.toString();
              print(qtyValue);
            });
          },
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

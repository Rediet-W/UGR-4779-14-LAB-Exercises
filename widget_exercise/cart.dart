import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Cart(),
  ));
}

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, size: 25),
        title: const Center(
          child: Text(
            'Cart',
            style: TextStyle(color: Color.fromARGB(255, 212, 141, 7)),
          ),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(
                Icons.shopify,
                size: 50,
              ),
              Column(
                children: [
                  Text(
                    "Shopping Cart",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "verify your quantity and click checkout",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              )
            ],
          ),
          Row(children: [
            Image(
              image: AssetImage(
                "assets/calas.jpg",
              ),
              width: 90,
              height: 250,
            ),
            Column(
              children: [
                Text("Calas"),
                Text(
                  "\$15.00",
                  style: TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.add_rounded,
                  size: 50,
                ),
                Text('1.0'),
                Icon(
                  Icons.minimize_rounded,
                  size: 50,
                )
              ],
            )
          ]),
          Card(
            //padding: const EdgeInsets.all(8.0),
            color: Color.fromARGB(255, 136, 135, 135),
            child: Row(children: [
              Image(
                image: AssetImage(
                  "assets/calas.jpg",
                ),
                width: 90,
                height: 250,
              ),
              Column(
                children: [
                  Text(
                    "Angel Hair",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                  Text("salman Mozzarella"),
                  Text(
                    "\$15.00",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.add_rounded,
                    size: 50,
                  ),
                  Text('1.0'),
                  Icon(
                    Icons.minimize_rounded,
                    size: 50,
                  )
                ],
              )
            ]),
          )
        ],
      ),
      bottomSheet: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("subtotal"), Text('\$60.98')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Tax(10.0%)"), Text('\$6.1')],
          ),
          Row(
            children: [
              //ElevatedButton(onPressed, child: Text("checkout"))
            ],
          )
        ],
      ),
    );
  }
}

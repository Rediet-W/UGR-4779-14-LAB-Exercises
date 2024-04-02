import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: porsche(),
  ));
}

class porsche extends StatelessWidget {
  const porsche({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_left, size: 50),
          actions: const [
            Icon(Icons.share, size: 50),
            Icon(Icons.settings, size: 50)
          ],
        ),
        body: ListView(
          children: const [
            Image(
              image: AssetImage(
                "assets/porsche.jpg",
              ),
              width: 900,
              height: 500,
            ),
            Text("1975 Porsche 911 Carrera",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                )),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up, size: 25),
                    Text("0"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.chat, size: 25),
                    Text("0"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share, size: 25),
                    Text("Share"),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Essential Information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                Text('1 of 3 done')
              ],
            ),
            Divider(
              color: Colors.black45,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Icon(Icons.check_circle, color: Colors.greenAccent, size: 25),
                  Text("Year, Make, Model, VIN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                ]),
                Icon(Icons.edit, size: 25)
              ],
            ),
            Column(
              children: [
                Text("year: 1975"),
                Text("Make: Porsche"),
                Text("Model: 911 Camera"),
                Text("VIN: 9115400029"),
              ],
            ),
            Divider(
              color: Color.fromARGB(115, 66, 66, 66),
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Icon(Icons.check_circle, size: 25),
                  Text("Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                ]),
                Icon(Icons.edit, size: 25)
              ],
            ),
            Divider(
              color: Color.fromARGB(255, 81, 80, 80),
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Icon(Icons.check_circle, size: 25),
                  Text("Photos",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                ]),
                Icon(Icons.edit, size: 25)
              ],
            )
          ],
        ));
  }
}

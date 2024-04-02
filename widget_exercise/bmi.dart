import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: BMI(),
  ));
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child:
                Text('BMI CALCULATOR', style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.purple[600],
      ),
      bottomSheet: Container(
          decoration: BoxDecoration(color: Colors.purple),
          child: Text('CALCULATE')),
    );
  }
}

import 'package:flutter/material.dart';

class Bmicalc extends StatefulWidget {
  const Bmicalc({Key? key}) : super(key: key);

  @override
  State<Bmicalc> createState() => _BmicalcState();
}

class _BmicalcState extends State<Bmicalc> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate() {
    h_value = double.parse(height.text);
    w_value = double.parse(weight.text);
    result = w_value / (h_value/100 * h_value/100);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
            backgroundColor: Colors.black87, title: Text('BMI CALCULATOR')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: height,
              style: new TextStyle(
                fontSize: 22.0,
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white60,
                border: OutlineInputBorder(),
                labelText: 'BODY HEIGHT',
                hintText: 'Enter your height',
              ),
            ),
            SizedBox(height: 25),
            TextField(
              controller: weight,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white60,
                border: OutlineInputBorder(),
                labelText: 'BODY WEIGHT',
                hintText: 'Enter your weight',
              ),
              style: TextStyle(color: Colors.black87),
            ),
            TextButton(
        onPressed: () {
              setState(() {
                calculate();
                fgg
              });
              }, child: Text('calculate')),
            Text(result.toString()),
          ],
        ));
  }
}

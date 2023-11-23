
import 'package:flutter/material.dart';

void main() {
  runApp(const CurrencyConverter());
}

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => Currency_Converter();
}

// ignore: camel_case_types
class Currency_Converter extends State<CurrencyConverter> {
  double result = 0;
  final TextEditingController controller1 = TextEditingController();
  void convert() {
    result = double.parse(controller1.text) * 83.34;
    setState(() {});
  }

  @override
  void dispose() {
    controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: const Text(
            "Currency Converter",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
          //elevation: 0,
        ),
        body: Column(
          children: [
            Image.asset(
              "asset/images/USD-INR.jpg",
              width: 200,
              height: 400,
              filterQuality: FilterQuality.high,
            ),
            const SizedBox(
              height: 0,
            ),
            Text(
              'INR ${result.toStringAsFixed(2)} ',
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.green),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller1,
                style: const TextStyle(color: Colors.black),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  hintText: "Enter the amount in USD",
                  hintStyle: TextStyle(color: Colors.black),
                  fillColor: Color.fromARGB(255, 214, 215, 218),
                  filled: true,
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.zero,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3.0, style: BorderStyle.solid),
                      borderRadius: BorderRadius.zero),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                //onpressed:(){result = double.parse(controller1.text) * 80;}
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: const Color.fromARGB(255, 238, 225, 225),
                  //minimumSize: const Size(double.infinity, 50),
                  //minimumSize: Size(20, 10),
                  fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  "convert",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// create a varibale that stores the converted currency value.
// Create a function that multiplies the value given by the textfeild with 81
// Store the value in the variable the we created
// Display the variable

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("Rebuild fn");
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        // color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(60),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 22, 134, 226),
        title: Center(
          child: Text(
            "Currency Converter App",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(2),
            // color: Colors.amber,
            child: Text(
              result.toString(),
              style: TextStyle(
                fontSize: 55,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            // color: Colors.red,
            child: TextField(
              controller: textEditingController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "Please Enter Amount in USD ...",
                hintStyle: TextStyle(color: Colors.red),
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: const Color.fromARGB(255, 130, 224, 237),
                focusedBorder: border,
                enabledBorder: border,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 85.35;
                });
              },
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(Colors.black),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                fixedSize: WidgetStatePropertyAll(Size(400, 50)),
              ),

              child: Text("Convert it", style: TextStyle(fontSize: 18)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  textEditingController.clear();
                });
              },
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(Colors.black),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                fixedSize: WidgetStatePropertyAll(Size(400, 50)),
              ),

              child: Text("Reset", style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}

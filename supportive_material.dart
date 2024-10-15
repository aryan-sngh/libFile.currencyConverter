import 'package:flutter/material.dart';

class SupportiveMaterial extends StatefulWidget {
  const SupportiveMaterial({super.key});

  @override
  State<SupportiveMaterial> createState() {
    return _SupportiveMateriaState();
  }
}

class _SupportiveMateriaState extends State<SupportiveMaterial> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(10));

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "Currency Converter",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in INR",
                  hintStyle: const TextStyle(color: Colors.black54),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 84.04;
                  });
                },
                style: ButtonStyle(
                  elevation: const WidgetStatePropertyAll(15),
                  backgroundColor: const WidgetStatePropertyAll(Colors.black),
                  foregroundColor: const WidgetStatePropertyAll(Colors.white),
                  minimumSize: const WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text("Convert"),
              ),
            ],
          ),
        )));
  }
}

import 'package:flutter/cupertino.dart';

class SupportiveCupertino extends StatefulWidget {
  const SupportiveCupertino({super.key});

  @override
  State<SupportiveCupertino> createState() => _SupportiveCupertinoState();
}

class _SupportiveCupertinoState extends State<SupportiveCupertino> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGrey3,
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey3,
          middle: Text(
            "Currency Converter",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: CupertinoColors.white,
            ),
          ),
        ),
        child: Center(
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
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: "please enter the amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 83;
                  });
                },
                color: CupertinoColors.black,
                child: const Text(
                  "Convert",
                  style: TextStyle(
                    color: CupertinoColors.white,
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}

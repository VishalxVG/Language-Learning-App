import 'package:flutter/material.dart';

class SpanishMoneyPage extends StatelessWidget {
  const SpanishMoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: const Center(
          child: Text(
            '1 euro =>> 1 euro\n2 euros =>> 2 euros\n5 euros =>> 5 euros\n10 euros =>> 10 euros\n20 euros =>> 20 euros\n50 euros =>> 50 euros\n100 euros =>> 100 euros\n200 euros =>> 200 euros\n500 euros =>> 500 euros',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
